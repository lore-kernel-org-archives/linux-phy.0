Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B7114C55184
	for <linux-phy@archiver.kernel.org>; Sun,  2 Aug 2026 20:35:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=M6uvqceCvF3AMZIBnr/d05FWWSh6g2FxPHpY3SJ42OM=; b=vNYC4O7t7mU9L7
	CbHxgoLAC258zokkcENfn+XGtL2gd+bPkIa4PKJCgKh40G1w793hzMxj+5OiBVO4lSsfSPp43tboS
	z6Q6smtX9p5IA51bAxnoJfITgjHwseS0jIwA1rDxoQRxJ2iGe0HP6ofRTtPhFcQujivzo61LsF/Ui
	fctw14/0CpbONLn9/BFrpugd1yF9Ame3DOiNosy/U0XNLUzhi0FEaXL8VGX/FKhuCBLM7aZDlAf7+
	8nSwyud9/4zUtwSjmw/s3QNvgfdWDLfqVpGRW2O6hrAeK2SKBY4OKrb5/MmICQloQqf3uF1iXH6gi
	OrVsmgQwP1G3AF0Sstcw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wqctw-0000000G2Nz-1k5E;
	Sun, 02 Aug 2026 20:35:16 +0000
Received: from mail-wm1-x335.google.com ([2a00:1450:4864:20::335])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wqcto-0000000G2CC-1K7R
	for linux-phy@lists.infradead.org;
	Sun, 02 Aug 2026 20:35:15 +0000
Received: by mail-wm1-x335.google.com with SMTP id 5b1f17b1804b1-493f6de72faso9343655e9.0
        for <linux-phy@lists.infradead.org>; Sun, 02 Aug 2026 13:35:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1785702906; x=1786307706; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=DvzEYaG5KL1DCfKUfT9u24qjpaGL2kBtVkoPG7vk0nE=;
        b=jANZydmyjVG5131o6v/OhVNBAZTq5eH/FvJSFHwcSrS+dVJo/2AojvSmchYWxEQqag
         8lgUkqV7hgqvguhmFZXV3T6Vp4dSFt44ja08sXAKKdZznkndop/P2jh2Pz/84ChWJJ5H
         jrtLsgxw/uM0jXFf8ow8VnYSjqpkpxwgrZFy4oJ2CZQ+TGOY0B5Q+Ix4hgcHZ7ePPQ7W
         fuJ3phuHsmgYDYug0juBXNi9VOrn5nJZGoYSzhD8TkmCGrt5HEE6TSepQksmz3nu9b33
         REeaIFmxZIHxun1mOggSR+4/v23AkdGvkoD9PtF/ngeNxrivt5v+Ps3mjiK4syYXHRez
         82xw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1785702906; x=1786307706;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=DvzEYaG5KL1DCfKUfT9u24qjpaGL2kBtVkoPG7vk0nE=;
        b=GqBmv8VRi7PgfWQ9JhOCh5wqYDI76p0SF0SDR2xjiHXXpGRkeXOIi/Vupai+gcOOQX
         td4T9j12GDnvNKZZXCRlc9995m7He53AH3zuby7/uuWaK4zIpi/1Y0m+yAEaPy1t7Iny
         VOcsEXoYirSj68fEPHbftEkGYKa0ukLdu4ATqjJLDGVZWLdLBbms7Zca/5kP/qb/luKg
         z1FQs+O7ODU8acTHorsDPIx4p+J+KLds0C1d5d/7BzInmXzvadewepyrvKXCwkYcoZRH
         SAqzvroudjhkBo4qxcpe2NqV5uL9wyJLdLwG2kTWY70pBdC+1UVKP3zDgvYWNXIJbHZK
         FDJw==
X-Forwarded-Encrypted: i=1; AHgh+Rr1ISn57BC/QzfM9+OWaEvnZ6dHIfXrOxEVKIfjf2NXlegrY1B1RlDYtvYQbwDWf5Rc8j0BZbcJGzQ=@lists.infradead.org
X-Gm-Message-State: AOJu0YxQYKzwS3P9CQHwlRSc7fm6cr3YBhlXWorf0ssXPa5QninallXC
	Oh8iZnGQX1nzp55vkxhHPweh47sqkjmOodKV8tHOYJmmxOQ+uBJ6yU81
X-Gm-Gg: AR+sD102AB88oMvHzYuNITzYOCruFA3V4s7B6by62sOozpyo/g9H7BonRJBTDt8n2vq
	VT4B8YF1wcDmI+VF+VRJuKRzj/CEmZ1Z+SqcD9TXN5ACfx4xCPMmW/LawJDkizguJtAXApCG9hS
	d1FR1UwVqGM6LIl7V8vaXsrsPq8sHyZKpLwZoHep61cVZuF9ldk6vtggk2nauY8BUu9ezvg+7rI
	f0BgsOlrK5oB2GqtDv2ZLQaE1EbEwGSfeLUBoUzdBmsCuugKiAzFaq6zJ1ILi0FrAYGuVltS/mx
	w+jO6vhtDMVJV8C/ZtCxepnMAe2E8ZgFuHsE0IBbZhk4FO/SNHY0FytHRaosjob7nbN5vGCxWO5
	z468pRAw/LVfrEz40UFbTxqMUGu4SYZc6XnhG6s5GueKWeEMx4XaBDa7MRmCJZ2YL2Mr+FybRz9
	I8PONWKs93Igo6YY21mu8Y20HreapaHdD3Vsfw/xvSpRoc3CrjKrz0pkP/G6/F5owfP7ixEXmr
X-Received: by 2002:a05:600c:6298:b0:497:ff5a:38b9 with SMTP id 5b1f17b1804b1-4980ebc216amr136052085e9.9.1785702906383;
        Sun, 02 Aug 2026 13:35:06 -0700 (PDT)
Received: from [192.168.0.2] ([197.250.226.155])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-49807bb45ebsm118499905e9.4.2026.08.02.13.35.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 02 Aug 2026 13:35:05 -0700 (PDT)
From: =?utf-8?q?Stefan_D=C3=B6singer?= <stefandoesinger@gmail.com>
Date: Sun, 02 Aug 2026 23:33:44 +0300
Subject: [PATCH v9 12/12] ARM: dts: zte: Declare zx297520v3 CRM device
 nodes
MIME-Version: 1.0
Message-Id: <20260802-zx29clk-v9-12-d05530d85d28@gmail.com>
References: <20260802-zx29clk-v9-0-d05530d85d28@gmail.com>
In-Reply-To: <20260802-zx29clk-v9-0-d05530d85d28@gmail.com>
To: Michael Turquette <mturquette@baylibre.com>, 
 Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Philipp Zabel <p.zabel@pengutronix.de>, 
 Brian Masney <bmasney@redhat.com>, Vinod Koul <vkoul@kernel.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>, 
 Russell King <linux@armlinux.org.uk>, Lee Jones <lee@kernel.org>
Cc: linux-clk@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-phy@lists.infradead.org, mfd@lists.linux.dev, 
 =?utf-8?q?Stefan_D=C3=B6singer?= <stefandoesinger@gmail.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=5251;
 i=stefandoesinger@gmail.com; h=from:subject:message-id;
 bh=IpNPrcYTLAqFJmETJtmAVtdcREnzQQbvbMDwDDk/4OY=;
 b=owEBiQJ2/ZANAwAIAT0TvMhUTxoiAcsmYgBqb6my4F5YNtlLMJvdd9J/r91nVBhltsGymwrZK
 o2xEn0+CvKJAk8EAAEIADkWIQRDFvS2qgVbJ5UyXWw9E7zIVE8aIgUCam+pshsUgAAAAAAEAA5t
 YW51MiwyLjUrMS4xMiwyLDIACgkQPRO8yFRPGiIWmBAApDEIYa96wbF3yvX0uqVAgKw6wkqgUYn
 8vhEtTrLxW7GM/VBsxk3ML3zaZMH2jKbBTqu2IiTxdDyDMRobFtEOjVqWE2u9FdDge6kiNWpDVv
 gUOotksD035n5N9tkYjARluu8hIEALSa2ZoV5IfqGViwCpP+WrlA3cjw0efI+ZAL+wa6otZ1mAM
 xroBhWmLkbrvflqiMnXfv5k+ZshECo1xpQTGU0eSklH7pOCtVJ//ExjwktCfDYf7tRiEAw6LCda
 6gUs2vUN5RnsLj6uAPdqqxInmxW9EXaqVvpNNcmeBa+8TCjSNxeFmOYIOFAZnY3vuoIJsXJwUsy
 PxVp242pqAuG/5EFwjTUl34GGaycJTGEphccECSpg+6Mimf3Wu2tbbBAJFeJ86CLcq57Gv8Xpkx
 ll93oxgU6u4FZ4tV7cUWduODvfpxHN2/tEgQwZL6JZW5tlliiMTrBHSaRkQmRxbjrsKm/W/Q01S
 AeqgLelaNL22KcX3+GsowLDkj6Hirm69uNzfNcpsPO3WrcK+VGhGZ2NQ95q+jQ85f5pWBMhz0QZ
 gDWxMGzjA5k79gXtI3tpVlzoaO3FOfRjPLoo4a6QrZbt0gxIgKPVaJvPXttiIatD7xSnD+iHiWg
 rKB7Ph6c+63MX4LufRZGxltAXjPEL/WJYZGJtqw168MOWxDCGoMU=
X-Developer-Key: i=stefandoesinger@gmail.com; a=openpgp;
 fpr=4F9C2C8728019633893EBBB98CB81F9A72BBA155
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260802_133508_415187_486540FF 
X-CRM114-Status: GOOD (  13.41  )
X-BeenThere: linux-phy@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Linux Phy Mailing list <linux-phy.lists.infradead.org>
List-Unsubscribe: <https://lists.infradead.org/mailman/options/linux-phy>,
 <mailto:linux-phy-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-phy/>
List-Post: <mailto:linux-phy@lists.infradead.org>
List-Help: <mailto:linux-phy-request@lists.infradead.org?subject=help>
List-Subscribe: <https://lists.infradead.org/mailman/listinfo/linux-phy>,
 <mailto:linux-phy-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

VGhpcyBtYWtlcyB1c2Ugb2YgdGhlIGRyaXZlciBhZGRlZCBpbiB0aGUgcHJldmlvdXMgcGF0Y2hl
cy4gSXQgd2lyZXMgdXAKdGhlIHVhcnQgY2xvY2tzIGFuZCByZXNldHMgYW5kIGFsbG93cyBnZXR0
aW5nIHJpZCBvZiB0aGUgcGxhY2Vob2xkZXIKdWFydGNsayBub2RlLgoKU2lnbmVkLW9mZi1ieTog
U3RlZmFuIETDtnNpbmdlciA8c3RlZmFuZG9lc2luZ2VyQGdtYWlsLmNvbT4KCi0tLQoKVmVyc2lv
biA5OgpTb3J0IG5ldyBub2RlcyBieSBtbWlvIGFkZHJlc3MKcmVuYW1lIHN5c2Nvbi1yZWJvb3Qg
dG8gInJlYm9vdCIKYWRqdXN0IHRvIGNoYW5nZXMgaW4gYmluZGluZ3MKClZlcnNpb24gNzoKQWRk
IHBoeSBub2RlcyB0byB0b3Bjcm0KUmVtb3ZlIHN5c2NvbiBmcm9tIG1hdHJpeGNsayBhZ2FpbgpB
ZGFwdCByZW1vdmUgbm93LXJlbW92ZWQgZXh0cmEgY2xrIGlucHV0cyBmcm9tIG1hdHJpeApBZGQg
cmVzZXQgdG8gTFNQCm9zYzI2bSAtPiBjbG9jay0yNm0gZm9yIHRoZSBmaXhlZCByYXRlIGNsb2Nr
cywgbGlrZXdpc2UgZm9yIDMyawoKVmVyc2lvbiA2OgpBZGQgc3lzY29uIHRvIG1hdHJpeGNsawoK
VmVyc2lvbiA1OgpSZS1uYW1lIGZyb20gKmNsayB0byAqY3JtCkFkZCB0aGUgc3lzY29uLXJlYm9v
dCBub2RlIGhlcmUgYmVjYXVzZSB0aGUgYmluZGluZyByZXF1aXJlcyBpdApSZS1hZGQgYWNjaWRl
bnRhbGx5IGRyb3BwZWQgdWFydDIgSVJRCi0tLQogYXJjaC9hcm0vYm9vdC9kdHMvenRlL3p4Mjk3
NTIwdjMuZHRzaSB8IDgxICsrKysrKysrKysrKysrKysrKysrKysrKysrKysrKystLS0tCiAxIGZp
bGUgY2hhbmdlZCwgNzMgaW5zZXJ0aW9ucygrKSwgOCBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQg
YS9hcmNoL2FybS9ib290L2R0cy96dGUvengyOTc1MjB2My5kdHNpIGIvYXJjaC9hcm0vYm9vdC9k
dHMvenRlL3p4Mjk3NTIwdjMuZHRzaQppbmRleCBhMTZjMzBhMTY0YmIuLjU3OWFkNDUwMjhmNiAx
MDA2NDQKLS0tIGEvYXJjaC9hcm0vYm9vdC9kdHMvenRlL3p4Mjk3NTIwdjMuZHRzaQorKysgYi9h
cmNoL2FybS9ib290L2R0cy96dGUvengyOTc1MjB2My5kdHNpCkBAIC0zLDcgKzMsOSBAQAogICog
Q29weXJpZ2h0IChjKSAyMDI2IFN0ZWZhbiBEw7ZzaW5nZXIgPHN0ZWZhbmRvZXNpbmdlckBnbWFp
bC5jb20+CiAgKi8KIAorI2luY2x1ZGUgPGR0LWJpbmRpbmdzL2Nsb2NrL3p0ZSx6eDI5NzUyMHYz
LWNsay5oPgogI2luY2x1ZGUgPGR0LWJpbmRpbmdzL2ludGVycnVwdC1jb250cm9sbGVyL2FybS1n
aWMuaD4KKyNpbmNsdWRlIDxkdC1iaW5kaW5ncy9yZXNldC96dGUsengyOTc1MjB2My1yZXNldC5o
PgogCiAvIHsKIAkjYWRkcmVzcy1jZWxscyA9IDwxPjsKQEAgLTIwLDEzICsyMiwxNiBAQCBjcHVA
MCB7CiAJCX07CiAJfTsKIAotCS8qIEJhc2UgYnVzIGNsb2NrIGFuZCBkZWZhdWx0IGZvciB0aGUg
VUFSVC4gSXQgd2lsbCBiZSByZXBsYWNlZCBvbmNlIGEgY2xvY2sgZHJpdmVyIGhhcwotCSAqIGJl
ZW4gYWRkZWQuCi0JICovCi0JdWFydGNsazogdWFydGNsay0yNjAwMDAwMCB7Ci0JCSNjbG9jay1j
ZWxscyA9IDwwPjsKKwlvc2MyNm06IGNsb2NrLTI2bSB7CiAJCWNvbXBhdGlibGUgPSAiZml4ZWQt
Y2xvY2siOwogCQljbG9jay1mcmVxdWVuY3kgPSA8MjYwMDAwMDA+OworCQkjY2xvY2stY2VsbHMg
PSA8MD47CisJfTsKKworCW9zYzMyazogY2xvY2stMzJrIHsKKwkJY29tcGF0aWJsZSA9ICJmaXhl
ZC1jbG9jayI7CisJCWNsb2NrLWZyZXF1ZW5jeSA9IDwzMjc2OD47CisJCSNjbG9jay1jZWxscyA9
IDwwPjsKIAl9OwogCiAJdGltZXIgewpAQCAtNzUsMTggKzgwLDc3IEBAIHVhcnQwOiBzZXJpYWxA
MTMxMDAwIHsKIAkJCWFybSxwcmltZWNlbGwtcGVyaXBoaWQgPSA8MHgwMDE4YzAxMT47CiAJCQly
ZWcgPSA8MHgwMDEzMTAwMCAweDEwMDA+OwogCQkJaW50ZXJydXB0cyA9IDxHSUNfU1BJIDAgSVJR
X1RZUEVfTEVWRUxfSElHSD47Ci0JCQljbG9ja3MgPSA8JnVhcnRjbGs+LCA8JnVhcnRjbGs+Owor
CQkJY2xvY2tzID0gPCZ0b3Bjcm0gWlgyOTc1MjBWM19VQVJUMF9XQ0xLPiwgPCZ0b3Bjcm0gWlgy
OTc1MjBWM19VQVJUMF9QQ0xLPjsKIAkJCWNsb2NrLW5hbWVzID0gInVhcnRjbGsiLCAiYXBiX3Bj
bGsiOworCQkJcmVzZXRzID0gPCZ0b3Bjcm0gWlgyOTc1MjBWM19VQVJUMF9SRVNFVD47CiAJCQlz
dGF0dXMgPSAiZGlzYWJsZWQiOwogCQl9OwogCisJCXRvcGNybTogY2xvY2stY29udHJvbGxlckAx
M2IwMDAgeworCQkJY29tcGF0aWJsZSA9ICJ6dGUsengyOTc1MjB2My10b3Bjcm0iLCAic3lzY29u
IjsKKwkJCXJlZyA9IDwweDAwMTNiMDAwIDB4NDAwPjsKKwkJCWNsb2NrcyA9IDwmb3NjMjZtPiwg
PCZvc2MzMms+OworCQkJY2xvY2stbmFtZXMgPSAib3NjMjZtIiwgIm9zYzMyayI7CisJCQlpbnRl
cnJ1cHRzID0gPEdJQ19TUEkgNDIgSVJRX1RZUEVfRURHRV9SSVNJTkc+LAorCQkJCSAgICAgPEdJ
Q19TUEkgNDMgSVJRX1RZUEVfRURHRV9SSVNJTkc+LAorCQkJCSAgICAgPEdJQ19TUEkgNDUgSVJR
X1RZUEVfRURHRV9SSVNJTkc+LAorCQkJCSAgICAgPEdJQ19TUEkgNDYgSVJRX1RZUEVfRURHRV9S
SVNJTkc+OworCQkJaW50ZXJydXB0LW5hbWVzID0gInVzYi11cCIsICJ1c2ItZG93biIsICJoc2lj
LXVwIiwgImhzaWMtZG93biI7CisJCQkjY2xvY2stY2VsbHMgPSA8MT47CisJCQkjcGh5LWNlbGxz
ID0gPDE+OworCQkJI3Jlc2V0LWNlbGxzID0gPDE+OworCisJCQlyZWJvb3QgeworCQkJCWNvbXBh
dGlibGUgPSAic3lzY29uLXJlYm9vdCI7CisJCQkJb2Zmc2V0ID0gPDB4MD47CisJCQkJdmFsdWUg
PSA8MHgxPjsKKwkJCQltYXNrID0gPDB4MT47CisJCQl9OworCQl9OworCisJCW1hdHJpeGNybTog
Y2xvY2stY29udHJvbGxlckAxMzA2MDAwIHsKKwkJCWNvbXBhdGlibGUgPSAienRlLHp4Mjk3NTIw
djMtbWF0cml4Y3JtIjsKKwkJCXJlZyA9IDwweDAxMzA2MDAwIDB4NDAwPjsKKwkJCWNsb2NrcyA9
IDwmb3NjMjZtPiwgPCZvc2MzMms+LCA8JnRvcGNybSBaWDI5NzUyMFYzX0FIQl9QQ0xLPiwKKwkJ
CQkgPCZ0b3Bjcm0gWlgyOTc1MjBWM19NUExMPiwgPCZ0b3Bjcm0gWlgyOTc1MjBWM19NUExMX0Q1
PiwKKwkJCQkgPCZ0b3Bjcm0gWlgyOTc1MjBWM19EUExMPiwgPCZ0b3Bjcm0gWlgyOTc1MjBWM19H
UExMPiwKKwkJCQkgPCZ0b3Bjcm0gWlgyOTc1MjBWM19HUExMX0QyPiwgPCZ0b3Bjcm0gWlgyOTc1
MjBWM19HQVRFRF9PU0MyNk0+OworCQkJY2xvY2stbmFtZXMgPSAib3NjMjZtIiwgIm9zYzMyayIs
ICJhaGIiLCAibXBsbCIsICJtcGxsLWQ1IiwgImRwbGwiLAorCQkJCSAgICAgICJncGxsIiwgImdw
bGwtZDIiLCAid2Nsay1vc2MyNm0iOworCQkJI2Nsb2NrLWNlbGxzID0gPDE+OworCQkJI2h3bG9j
ay1jZWxscyA9IDwxPjsKKwkJCSNyZXNldC1jZWxscyA9IDwxPjsKKwkJfTsKKworCQlsc3Bjcm06
IGNsb2NrLWNvbnRyb2xsZXJAMTQwMDAwMCB7CisJCQljb21wYXRpYmxlID0gInp0ZSx6eDI5NzUy
MHYzLWxzcGNybSI7CisJCQlyZWcgPSA8MHgwMTQwMDAwMCAweDEwMD47CisJCQkjY2xvY2stY2Vs
bHMgPSA8MT47CisJCQkjcmVzZXQtY2VsbHMgPSA8MT47CisKKwkJCWNsb2NrcyA9IDwmbWF0cml4
Y3JtIFpYMjk3NTIwVjNfTFNQX01QTExfRDVfV0NMSz4sCisJCQkJIDwmbWF0cml4Y3JtIFpYMjk3
NTIwVjNfTFNQX01QTExfRDRfV0NMSz4sCisJCQkJIDwmbWF0cml4Y3JtIFpYMjk3NTIwVjNfTFNQ
X01QTExfRDZfV0NMSz4sCisJCQkJIDwmbWF0cml4Y3JtIFpYMjk3NTIwVjNfTFNQX01QTExfRDhf
V0NMSz4sCisJCQkJIDwmbWF0cml4Y3JtIFpYMjk3NTIwVjNfTFNQX01QTExfRDEyX1dDTEs+LAor
CQkJCSA8Jm1hdHJpeGNybSBaWDI5NzUyMFYzX0xTUF9PU0MyNk1fV0NMSz4sCisJCQkJIDwmbWF0
cml4Y3JtIFpYMjk3NTIwVjNfTFNQX09TQzMyS19XQ0xLPiwKKwkJCQkgPCZtYXRyaXhjcm0gWlgy
OTc1MjBWM19MU1BfUENMSz4sCisJCQkJIDwmbWF0cml4Y3JtIFpYMjk3NTIwVjNfTFNQX1RETV9X
Q0xLPiwKKwkJCQkgPCZtYXRyaXhjcm0gWlgyOTc1MjBWM19MU1BfRFBMTF9ENF9XQ0xLPjsKKwkJ
CWNsb2NrLW5hbWVzID0gIm1wbGwtZDUiLCAibXBsbC1kNCIsICJtcGxsLWQ2IiwgIm1wbGwtZDgi
LCAibXBsbC1kMTIiLAorCQkJCSAgICAgICJvc2MyNm0iLCAib3NjMzJrIiwgInBjbGsiLCAidGRt
LXdjbGsiLCAiZHBsbC1kNCI7CisJCQlyZXNldHMgPSA8Jm1hdHJpeGNybSBaWDI5NzUyMFYzX0xT
UF9SRVNFVD47CisJCX07CisKIAkJdWFydDE6IHNlcmlhbEAxNDA4MDAwIHsKIAkJCWNvbXBhdGli
bGUgPSAiYXJtLHBsMDExIiwgImFybSxwcmltZWNlbGwiOwogCQkJYXJtLHByaW1lY2VsbC1wZXJp
cGhpZCA9IDwweDAwMThjMDExPjsKIAkJCXJlZyA9IDwweDAxNDA4MDAwIDB4MTAwMD47CiAJCQlp
bnRlcnJ1cHRzID0gPEdJQ19TUEkgMSBJUlFfVFlQRV9MRVZFTF9ISUdIPjsKLQkJCWNsb2NrcyA9
IDwmdWFydGNsaz4sIDwmdWFydGNsaz47CisJCQljbG9ja3MgPSA8JmxzcGNybSBaWDI5NzUyMFYz
X1VBUlQxX1dDTEs+LCA8JmxzcGNybSBaWDI5NzUyMFYzX1VBUlQxX1BDTEs+OwogCQkJY2xvY2st
bmFtZXMgPSAidWFydGNsayIsICJhcGJfcGNsayI7CisJCQlyZXNldHMgPSA8JmxzcGNybSBaWDI5
NzUyMFYzX1VBUlQxX1JFU0VUPjsKIAkJCXN0YXR1cyA9ICJkaXNhYmxlZCI7CiAJCX07CiAKQEAg
LTk1LDggKzE1OSw5IEBAIHVhcnQyOiBzZXJpYWxAMTQwZDAwMCB7CiAJCQlhcm0scHJpbWVjZWxs
LXBlcmlwaGlkID0gPDB4MDAxOGMwMTE+OwogCQkJcmVnID0gPDB4MDE0MGQwMDAgMHgxMDAwPjsK
IAkJCWludGVycnVwdHMgPSA8R0lDX1NQSSAyIElSUV9UWVBFX0xFVkVMX0hJR0g+OwotCQkJY2xv
Y2tzID0gPCZ1YXJ0Y2xrPiwgPCZ1YXJ0Y2xrPjsKKwkJCWNsb2NrcyA9IDwmbHNwY3JtIFpYMjk3
NTIwVjNfVUFSVDJfV0NMSz4sIDwmbHNwY3JtIFpYMjk3NTIwVjNfVUFSVDJfUENMSz47CiAJCQlj
bG9jay1uYW1lcyA9ICJ1YXJ0Y2xrIiwgImFwYl9wY2xrIjsKKwkJCXJlc2V0cyA9IDwmbHNwY3Jt
IFpYMjk3NTIwVjNfVUFSVDJfUkVTRVQ+OwogCQkJc3RhdHVzID0gImRpc2FibGVkIjsKIAkJfTsK
IAl9OwoKLS0gCjIuNTQuMAoKCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBs
aXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2xpbnV4LXBoeQo=
