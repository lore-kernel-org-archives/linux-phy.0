Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D5BE5C61DBD
	for <linux-phy@archiver.kernel.org>; Tue, 25 Aug 2026 21:24:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=x8YUlBn1sVX0diIZaLFLDGQQe3q+cBMjnxUSZeNc1L8=; b=U3B8oETup+uBOl
	zSgjsdfCG8g4dP1o1akkrhuYRSede+HBVPCpzDBOPZijZiphOtRJ0+61ZrX5ZYNOosxD7SfJ2a/xY
	YmNMdWmGwNR4LGUJpFhJfnX8L8ZNT8g02w7281Jksa1ENXsO7JcsdzvuopAnxqGSE0hpu1KX75dw9
	W0IJRInFSWPgSjWYH/DlCiOKQeOfcWOs5i1QUuQQvAY/ETdTlrdLL8l6xsMxJ0BeMVq3i214WOb1j
	TV6DWZZrpQe4SndsKnOYoxTXDQ6FO0AGa+w8bXokQvTejeqbu9qKOak8yQssvHvWzu+9lQxI20/1L
	n3I23ynMpGIIwLjYwyZA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wyydY-00000001Viw-0lqD;
	Tue, 25 Aug 2026 21:24:52 +0000
Received: from mail-ej1-x62d.google.com ([2a00:1450:4864:20::62d])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wyydV-00000001Vfl-3r9z
	for linux-phy@lists.infradead.org;
	Tue, 25 Aug 2026 21:24:51 +0000
Received: by mail-ej1-x62d.google.com with SMTP id a640c23a62f3a-c1670dad7a8so27741466b.3
        for <linux-phy@lists.infradead.org>; Tue, 25 Aug 2026 14:24:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1787693088; x=1788297888; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=54y23mxK+nUslXjeRLc03HJMUkg572iXQMInlkBYXW8=;
        b=QSKPLOoAy9PIKpUyK5jyrE2gSNObafJSd8LrX0ajNb3ZNIo9L6sbvM3rSG1pQrp3/5
         ZHUzv/MueeasDD0mA611WdzNJ7p6Wt/LsjclgG5tz0u8MXZFtZbHEuLoFcaMVG0HY070
         e6Nld/2vkYPqQrBfLLsqhZe5TWIGZ7oCWU3DkhFZ09Ra0XFlks2ruw4Hm8eR9Az1Mh8v
         h2DOOyHfi/ha71ka4eKTJXFhcKHLCZKNJA0lK/LyzBsPp61qCIQBhzq5Zd01s1H40keB
         IA+xELYGSvcaMWCasOfAm6xrP2A58ebyB+ylUxNqA9wBJHi+S1rzS97vXGaYwIRf3agn
         UAVw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1787693088; x=1788297888;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=54y23mxK+nUslXjeRLc03HJMUkg572iXQMInlkBYXW8=;
        b=cGJxP/ShxdW+juMMzrvDpCrPj5ordO5XspLwjyE/z5z1haOhHPQQkMvpZXeYw64fS1
         2dG/xsXWtafEEdc43BNNbn5j94jYi8iptWZFxSYzbYIiX+w3ife9QXRhilibSxTR4fXc
         wklEM9yiF57S8ztIFc/SSzKx81NfTXWsvpcMoVSNtvvdJDlXdEFoY5+65RjFt59yncLq
         Nt1w1Y6qTNZduzEPyU0wMAYxdfRzor1fGQDdLyN9UVd5KYFo18/E4xZ/d9GcJqPrhpJZ
         3L3kpMIaVBXvrC3fxqUvFNY64ct5fZDxgU0TDRG73A/yLzm5AS101aQJsJwuIUJ2Z0dE
         H3uA==
X-Forwarded-Encrypted: i=1; AHgh+RrGqqhzmfPXREg3hZ6o4CzmgazPiyc4ofMGlwEmN5AMRshjeVOcBAsEDNvOXi/03wttMM7GVLVttcM=@lists.infradead.org
X-Gm-Message-State: AFuF++lIlTp4ix98q5rLKKg4bR+T4zeZ7EOuPHV0oA0hbei4RfOpKunQ
	febEH6W2cn4XVuIjYXI7T8bfuTFaEPMXioJ2sVcOvA3N49dZzb3EPxid
X-Gm-Gg: AR+sD118eId5lZzmli1HGROUbBjXFafVEduSKSpf859nyOQIuieUMduOKnq+a+Eel4N
	I4FRrgfaAFQim0BKVs53Xf+PG6gYZWKvnjtae8g/U5I8W89c9p/4sqi+RUnODVlSyUjhvjhfwHM
	v3STEDLb504P/AqYsnYBmO0k44QyWe0bkJy5E4O1SQ9wjkZcMkWdWBWObNPhYa/IRlJsN50NBqY
	NqDxPUdKaRfCjcK71I4fNGG+bh2ZqvAYAd0LbaNmvarL5Bk+CQnW9m122Z8mNlIOfIjN51ERxV2
	9jKbuA+oUaqXVZ7VlJdoT58Vuauk5ZECL0vM0MNQu3tHpt6OjDZL0PY9aTSXABrME9kDZuyMas4
	4TcY0CWKLn2xA/qQ9KGT9NPfz0rJAsvS2HPNpH3UOGFDg9/Q32J05jxSrygA4GaSfQVRvv5PzGy
	ryMYbedLMF/ZdH0bisuqjJmU5pFtznUijrusbRaZiE9xU3rDTHmqfELLL0ZB8fJLBlFOXaLg==
X-Received: by 2002:a17:906:eecb:b0:c24:82b9:361c with SMTP id a640c23a62f3a-c250c3935b3mr149671566b.17.1787693087893;
        Tue, 25 Aug 2026 14:24:47 -0700 (PDT)
Received: from [192.168.0.2] ([197.250.227.34])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-c250a9ec343sm98297866b.57.2026.08.25.14.24.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 25 Aug 2026 14:24:47 -0700 (PDT)
From: =?utf-8?q?Stefan_D=C3=B6singer?= <stefandoesinger@gmail.com>
Date: Wed, 26 Aug 2026 00:24:03 +0300
Subject: [PATCH v11 04/12] ARM: dts: zte: Declare zx297520v3 CRM device
 nodes
MIME-Version: 1.0
Message-Id: <20260826-zx29clk-v11-4-f8ad59c6426c@gmail.com>
References: <20260826-zx29clk-v11-0-f8ad59c6426c@gmail.com>
In-Reply-To: <20260826-zx29clk-v11-0-f8ad59c6426c@gmail.com>
To: Michael Turquette <mturquette@baylibre.com>, 
 Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Philipp Zabel <p.zabel@pengutronix.de>, 
 Brian Masney <bmasney@redhat.com>, Vinod Koul <vkoul@kernel.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>, 
 Russell King <linux@armlinux.org.uk>, Lee Jones <lee@kernel.org>, 
 Brian Masney <bmasney+clk@redhat.com>, 
 Jerome Brunet <jbrunet+clk@baylibre.com>, 
 Manivannan Sadhasivam <mani@kernel.org>
Cc: linux-clk@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-phy@lists.infradead.org, mfd@lists.linux.dev, 
 =?utf-8?q?Stefan_D=C3=B6singer?= <stefandoesinger@gmail.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=5921;
 i=stefandoesinger@gmail.com; h=from:subject:message-id;
 bh=E5Alc+/mDwMOmQLSCpdE0r7HEmxSfA7wEQRrzpumkfg=;
 b=owEBiQJ2/ZANAwAIAT0TvMhUTxoiAcsmYgBqjggCSgDFlwAO6v+aca7cDP/I7mCJB9DfA7Arv
 191naDiv8yJAk8EAAEIADkWIQRDFvS2qgVbJ5UyXWw9E7zIVE8aIgUCao4IAhsUgAAAAAAEAA5t
 YW51MiwyLjUrMS4xMiwyLDIACgkQPRO8yFRPGiLg6g//b0A9aN1Xnffa964EHOu7z9yng9YDKmt
 EKXY2SKL848HxXgX+VfcYidDnUYFHrcr1rWbaKVgqdZjQSorMrpsrSlK7FXj8ibsp+SZ9hWPDy2
 3Un0eK5ukH6A7UQosYWIaVodr+UhuXMJDNHGtp4qmwN7Cq3BtAWeaEiWkmmgsiwdzoutoK88Qdd
 Ubc293wZKpwn03xr1No2aOjGMIuN2ckTcLaBuvmbeq6SRMl/pOcKBg5iFSNcdKRVjS55Ahu54Cr
 fYHzbZb14Vfy8iUtopbitSYhJJAhT5rqPsRSSsXpxY/cnk7+k26vKFxgL5zf3EZlnp92So7X4Ho
 9+cQ2TgU7KJXOEBA8MkoTMLQKZQduMtJU/NKijqWJ6K3ZbLBbVOtncevR2jzCicemBktXCdNzg+
 /o8TCvz7Rj3CK/1BRHhfgAl6MLs9CijyiJRUmDV8APOPPHEY1IY5gPa8AY175Na1YYMCUtwLXku
 caz8lPlDCbyao/vRpEYUo9plKGTwS9Hn6jb26d3a1b1nL/obvuUX/3IRzQ3H+dT/cv8r3KDrIFE
 AdHSjkyy7ok2RAzrEXbpJXDXjncIvph176AUPWs7/WCX2FjNlQhc2CLu+xarYDqeHpXQHi6vowJ
 cEYt3JtzrFYI7FHCPcOl3sKf22cZT75+gLFjd69COHyiE+MPSQcc=
X-Developer-Key: i=stefandoesinger@gmail.com; a=openpgp;
 fpr=4F9C2C8728019633893EBBB98CB81F9A72BBA155
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260825_142450_015793_43B69A40 
X-CRM114-Status: GOOD (  15.55  )
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

VGhpcyBwYXRjaCBhZGRzIERUIG5vZGVzIGZvciB0aGUgbWFpbiBjbG9jayBhbmQgcmVzZXQgY29u
dHJvbGxlcnMgb24gdGhlCnp4Mjk3NTIwdjMgYm9hcmQuIEl0IHJlcGxhY2VzIHRoZSB0ZW1wb3Jh
cnkgcGxhY2Vob2xkZXIgVUFSVCBjbG9ja3Mgd2l0aAp0aGUgcHJvcGVyIGNsb2NrcyBleHBvcnRl
ZCBieSB0b3Bjcm0gYW5kIGxzcGNybS4KClNpZ25lZC1vZmYtYnk6IFN0ZWZhbiBEw7ZzaW5nZXIg
PHN0ZWZhbmRvZXNpbmdlckBnbWFpbC5jb20+CgotLS0KClZlcnNpb24gMTE6IEltcHJvdmVkIHRo
ZSBhYm92ZSB0aGUgbGluZSBjb21taXQgZGVzY3JpcHRpb24sIHJlbW92aW5nCnJlZmVyZW5jZXMg
dG8gInByZXZpb3VzIHBhdGNoZXMiIHRoYXQgd29uJ3QgbWFrZSBzZW5zZSB3aGVuIHJlYWRpbmcg
aXQKaW4gdGhlIGtlcm5lbCBjb21taXQgbG9nLgoKVmVyc2lvbiAxMDogRml4IGlzc3VlcyB3aXRo
IGR0LWNoZWNrLXN0eWxlIC0tbW9kZT1zdHJpY3QgaW4gbmV3bHkgYWRkZWQKY29kZSwgYnV0IGxl
ZnQgaXNzdWVzIGluIGV4aXN0aW5nIG5vZGVzIGFsb25lLgoKVmVyc2lvbiA5OgpTb3J0IG5ldyBu
b2RlcyBieSBtbWlvIGFkZHJlc3MKcmVuYW1lIHN5c2Nvbi1yZWJvb3QgdG8gInJlYm9vdCIKYWRq
dXN0IHRvIGNoYW5nZXMgaW4gYmluZGluZ3MKClZlcnNpb24gNzoKQWRkIHBoeSBub2RlcyB0byB0
b3Bjcm0KUmVtb3ZlIHN5c2NvbiBmcm9tIG1hdHJpeGNsayBhZ2FpbgpBZGFwdCByZW1vdmUgbm93
LXJlbW92ZWQgZXh0cmEgY2xrIGlucHV0cyBmcm9tIG1hdHJpeApBZGQgcmVzZXQgdG8gTFNQCm9z
YzI2bSAtPiBjbG9jay0yNm0gZm9yIHRoZSBmaXhlZCByYXRlIGNsb2NrcywgbGlrZXdpc2UgZm9y
IDMyawoKVmVyc2lvbiA2OgpBZGQgc3lzY29uIHRvIG1hdHJpeGNsawoKVmVyc2lvbiA1OgpSZS1u
YW1lIGZyb20gKmNsayB0byAqY3JtCkFkZCB0aGUgc3lzY29uLXJlYm9vdCBub2RlIGhlcmUgYmVj
YXVzZSB0aGUgYmluZGluZyByZXF1aXJlcyBpdApSZS1hZGQgYWNjaWRlbnRhbGx5IGRyb3BwZWQg
dWFydDIgSVJRCi0tLQogYXJjaC9hcm0vYm9vdC9kdHMvenRlL3p4Mjk3NTIwdjMuZHRzaSB8IDEw
MSArKysrKysrKysrKysrKysrKysrKysrKysrKysrKystLS0tCiAxIGZpbGUgY2hhbmdlZCwgODkg
aW5zZXJ0aW9ucygrKSwgMTIgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvYXJjaC9hcm0vYm9v
dC9kdHMvenRlL3p4Mjk3NTIwdjMuZHRzaSBiL2FyY2gvYXJtL2Jvb3QvZHRzL3p0ZS96eDI5NzUy
MHYzLmR0c2kKaW5kZXggYTE2YzMwYTE2NGJiLi5lYmFjM2NkMTM3ZGYgMTAwNjQ0Ci0tLSBhL2Fy
Y2gvYXJtL2Jvb3QvZHRzL3p0ZS96eDI5NzUyMHYzLmR0c2kKKysrIGIvYXJjaC9hcm0vYm9vdC9k
dHMvenRlL3p4Mjk3NTIwdjMuZHRzaQpAQCAtMywxMiArMywyNiBAQAogICogQ29weXJpZ2h0IChj
KSAyMDI2IFN0ZWZhbiBEw7ZzaW5nZXIgPHN0ZWZhbmRvZXNpbmdlckBnbWFpbC5jb20+CiAgKi8K
IAorI2luY2x1ZGUgPGR0LWJpbmRpbmdzL2Nsb2NrL3p0ZSx6eDI5NzUyMHYzLWNsay5oPgogI2lu
Y2x1ZGUgPGR0LWJpbmRpbmdzL2ludGVycnVwdC1jb250cm9sbGVyL2FybS1naWMuaD4KKyNpbmNs
dWRlIDxkdC1iaW5kaW5ncy9yZXNldC96dGUsengyOTc1MjB2My1yZXNldC5oPgogCiAvIHsKIAkj
YWRkcmVzcy1jZWxscyA9IDwxPjsKIAkjc2l6ZS1jZWxscyA9IDwxPjsKIAorCW9zYzI2bTogY2xv
Y2stMjZtIHsKKwkJY29tcGF0aWJsZSA9ICJmaXhlZC1jbG9jayI7CisJCSNjbG9jay1jZWxscyA9
IDwwPjsKKwkJY2xvY2stZnJlcXVlbmN5ID0gPDI2MDAwMDAwPjsKKwl9OworCisJb3NjMzJrOiBj
bG9jay0zMmsgeworCQljb21wYXRpYmxlID0gImZpeGVkLWNsb2NrIjsKKwkJI2Nsb2NrLWNlbGxz
ID0gPDA+OworCQljbG9jay1mcmVxdWVuY3kgPSA8MzI3Njg+OworCX07CisKIAljcHVzIHsKIAkJ
I2FkZHJlc3MtY2VsbHMgPSA8MT47CiAJCSNzaXplLWNlbGxzID0gPDA+OwpAQCAtMjAsMTUgKzM0
LDYgQEAgY3B1QDAgewogCQl9OwogCX07CiAKLQkvKiBCYXNlIGJ1cyBjbG9jayBhbmQgZGVmYXVs
dCBmb3IgdGhlIFVBUlQuIEl0IHdpbGwgYmUgcmVwbGFjZWQgb25jZSBhIGNsb2NrIGRyaXZlciBo
YXMKLQkgKiBiZWVuIGFkZGVkLgotCSAqLwotCXVhcnRjbGs6IHVhcnRjbGstMjYwMDAwMDAgewot
CQkjY2xvY2stY2VsbHMgPSA8MD47Ci0JCWNvbXBhdGlibGUgPSAiZml4ZWQtY2xvY2siOwotCQlj
bG9jay1mcmVxdWVuY3kgPSA8MjYwMDAwMDA+OwotCX07Ci0KIAl0aW1lciB7CiAJCWNvbXBhdGli
bGUgPSAiYXJtLGFybXY3LXRpbWVyIjsKIAkJaW50ZXJydXB0cyA9IDxHSUNfUFBJIDEzIElSUV9U
WVBFX0xFVkVMX0xPVz4sCkBAIC03NSwxOCArODAsODcgQEAgdWFydDA6IHNlcmlhbEAxMzEwMDAg
ewogCQkJYXJtLHByaW1lY2VsbC1wZXJpcGhpZCA9IDwweDAwMThjMDExPjsKIAkJCXJlZyA9IDww
eDAwMTMxMDAwIDB4MTAwMD47CiAJCQlpbnRlcnJ1cHRzID0gPEdJQ19TUEkgMCBJUlFfVFlQRV9M
RVZFTF9ISUdIPjsKLQkJCWNsb2NrcyA9IDwmdWFydGNsaz4sIDwmdWFydGNsaz47CisJCQljbG9j
a3MgPSA8JnRvcGNybSBaWDI5NzUyMFYzX1VBUlQwX1dDTEs+LAorCQkJCSA8JnRvcGNybSBaWDI5
NzUyMFYzX1VBUlQwX1BDTEs+OwogCQkJY2xvY2stbmFtZXMgPSAidWFydGNsayIsICJhcGJfcGNs
ayI7CisJCQlyZXNldHMgPSA8JnRvcGNybSBaWDI5NzUyMFYzX1VBUlQwX1JFU0VUPjsKKwogCQkJ
c3RhdHVzID0gImRpc2FibGVkIjsKIAkJfTsKIAorCQl0b3Bjcm06IGNsb2NrLWNvbnRyb2xsZXJA
MTNiMDAwIHsKKwkJCWNvbXBhdGlibGUgPSAienRlLHp4Mjk3NTIwdjMtdG9wY3JtIiwgInN5c2Nv
biI7CisJCQlyZWcgPSA8MHgwMDEzYjAwMCAweDQwMD47CisJCQkjY2xvY2stY2VsbHMgPSA8MT47
CisJCQljbG9ja3MgPSA8Jm9zYzI2bT4sIDwmb3NjMzJrPjsKKwkJCWNsb2NrLW5hbWVzID0gIm9z
YzI2bSIsICJvc2MzMmsiOworCQkJaW50ZXJydXB0cyA9IDxHSUNfU1BJIDQyIElSUV9UWVBFX0VE
R0VfUklTSU5HPiwKKwkJCQkgICAgIDxHSUNfU1BJIDQzIElSUV9UWVBFX0VER0VfUklTSU5HPiwK
KwkJCQkgICAgIDxHSUNfU1BJIDQ1IElSUV9UWVBFX0VER0VfUklTSU5HPiwKKwkJCQkgICAgIDxH
SUNfU1BJIDQ2IElSUV9UWVBFX0VER0VfUklTSU5HPjsKKwkJCWludGVycnVwdC1uYW1lcyA9ICJ1
c2ItdXAiLCAidXNiLWRvd24iLAorCQkJCQkgICJoc2ljLXVwIiwgImhzaWMtZG93biI7CisJCQkj
cGh5LWNlbGxzID0gPDE+OworCQkJI3Jlc2V0LWNlbGxzID0gPDE+OworCisJCQlyZWJvb3Qgewor
CQkJCWNvbXBhdGlibGUgPSAic3lzY29uLXJlYm9vdCI7CisJCQkJbWFzayA9IDwweDE+OworCQkJ
CW9mZnNldCA9IDwweDA+OworCQkJCXZhbHVlID0gPDB4MT47CisJCQl9OworCQl9OworCisJCW1h
dHJpeGNybTogY2xvY2stY29udHJvbGxlckAxMzA2MDAwIHsKKwkJCWNvbXBhdGlibGUgPSAienRl
LHp4Mjk3NTIwdjMtbWF0cml4Y3JtIjsKKwkJCXJlZyA9IDwweDAxMzA2MDAwIDB4NDAwPjsKKwkJ
CSNjbG9jay1jZWxscyA9IDwxPjsKKwkJCWNsb2NrcyA9IDwmb3NjMjZtPiwgPCZvc2MzMms+LAor
CQkJCSA8JnRvcGNybSBaWDI5NzUyMFYzX0FIQl9QQ0xLPiwKKwkJCQkgPCZ0b3Bjcm0gWlgyOTc1
MjBWM19NUExMPiwKKwkJCQkgPCZ0b3Bjcm0gWlgyOTc1MjBWM19NUExMX0Q1PiwKKwkJCQkgPCZ0
b3Bjcm0gWlgyOTc1MjBWM19EUExMPiwKKwkJCQkgPCZ0b3Bjcm0gWlgyOTc1MjBWM19HUExMPiwK
KwkJCQkgPCZ0b3Bjcm0gWlgyOTc1MjBWM19HUExMX0QyPiwKKwkJCQkgPCZ0b3Bjcm0gWlgyOTc1
MjBWM19HQVRFRF9PU0MyNk0+OworCQkJY2xvY2stbmFtZXMgPSAib3NjMjZtIiwgIm9zYzMyayIs
ICJhaGIiLCAibXBsbCIsCisJCQkJICAgICAgIm1wbGwtZDUiLCAiZHBsbCIsICJncGxsIiwgImdw
bGwtZDIiLAorCQkJCSAgICAgICJ3Y2xrLW9zYzI2bSI7CisJCQkjaHdsb2NrLWNlbGxzID0gPDE+
OworCQkJI3Jlc2V0LWNlbGxzID0gPDE+OworCQl9OworCisJCWxzcGNybTogY2xvY2stY29udHJv
bGxlckAxNDAwMDAwIHsKKwkJCWNvbXBhdGlibGUgPSAienRlLHp4Mjk3NTIwdjMtbHNwY3JtIjsK
KwkJCXJlZyA9IDwweDAxNDAwMDAwIDB4MTAwPjsKKwkJCSNjbG9jay1jZWxscyA9IDwxPjsKKwkJ
CWNsb2NrcyA9IDwmbWF0cml4Y3JtIFpYMjk3NTIwVjNfTFNQX01QTExfRDVfV0NMSz4sCisJCQkJ
IDwmbWF0cml4Y3JtIFpYMjk3NTIwVjNfTFNQX01QTExfRDRfV0NMSz4sCisJCQkJIDwmbWF0cml4
Y3JtIFpYMjk3NTIwVjNfTFNQX01QTExfRDZfV0NMSz4sCisJCQkJIDwmbWF0cml4Y3JtIFpYMjk3
NTIwVjNfTFNQX01QTExfRDhfV0NMSz4sCisJCQkJIDwmbWF0cml4Y3JtIFpYMjk3NTIwVjNfTFNQ
X01QTExfRDEyX1dDTEs+LAorCQkJCSA8Jm1hdHJpeGNybSBaWDI5NzUyMFYzX0xTUF9PU0MyNk1f
V0NMSz4sCisJCQkJIDwmbWF0cml4Y3JtIFpYMjk3NTIwVjNfTFNQX09TQzMyS19XQ0xLPiwKKwkJ
CQkgPCZtYXRyaXhjcm0gWlgyOTc1MjBWM19MU1BfUENMSz4sCisJCQkJIDwmbWF0cml4Y3JtIFpY
Mjk3NTIwVjNfTFNQX1RETV9XQ0xLPiwKKwkJCQkgPCZtYXRyaXhjcm0gWlgyOTc1MjBWM19MU1Bf
RFBMTF9ENF9XQ0xLPjsKKwkJCWNsb2NrLW5hbWVzID0gIm1wbGwtZDUiLCAibXBsbC1kNCIsICJt
cGxsLWQ2IiwKKwkJCQkgICAgICAibXBsbC1kOCIsICJtcGxsLWQxMiIsICJvc2MyNm0iLCAib3Nj
MzJrIiwKKwkJCQkgICAgICAicGNsayIsICJ0ZG0td2NsayIsICJkcGxsLWQ0IjsKKwkJCSNyZXNl
dC1jZWxscyA9IDwxPjsKKwkJCXJlc2V0cyA9IDwmbWF0cml4Y3JtIFpYMjk3NTIwVjNfTFNQX1JF
U0VUPjsKKwkJfTsKKwogCQl1YXJ0MTogc2VyaWFsQDE0MDgwMDAgewogCQkJY29tcGF0aWJsZSA9
ICJhcm0scGwwMTEiLCAiYXJtLHByaW1lY2VsbCI7CiAJCQlhcm0scHJpbWVjZWxsLXBlcmlwaGlk
ID0gPDB4MDAxOGMwMTE+OwogCQkJcmVnID0gPDB4MDE0MDgwMDAgMHgxMDAwPjsKIAkJCWludGVy
cnVwdHMgPSA8R0lDX1NQSSAxIElSUV9UWVBFX0xFVkVMX0hJR0g+OwotCQkJY2xvY2tzID0gPCZ1
YXJ0Y2xrPiwgPCZ1YXJ0Y2xrPjsKKwkJCWNsb2NrcyA9IDwmbHNwY3JtIFpYMjk3NTIwVjNfVUFS
VDFfV0NMSz4sCisJCQkJIDwmbHNwY3JtIFpYMjk3NTIwVjNfVUFSVDFfUENMSz47CiAJCQljbG9j
ay1uYW1lcyA9ICJ1YXJ0Y2xrIiwgImFwYl9wY2xrIjsKKwkJCXJlc2V0cyA9IDwmbHNwY3JtIFpY
Mjk3NTIwVjNfVUFSVDFfUkVTRVQ+OworCiAJCQlzdGF0dXMgPSAiZGlzYWJsZWQiOwogCQl9Owog
CkBAIC05NSw4ICsxNjksMTEgQEAgdWFydDI6IHNlcmlhbEAxNDBkMDAwIHsKIAkJCWFybSxwcmlt
ZWNlbGwtcGVyaXBoaWQgPSA8MHgwMDE4YzAxMT47CiAJCQlyZWcgPSA8MHgwMTQwZDAwMCAweDEw
MDA+OwogCQkJaW50ZXJydXB0cyA9IDxHSUNfU1BJIDIgSVJRX1RZUEVfTEVWRUxfSElHSD47Ci0J
CQljbG9ja3MgPSA8JnVhcnRjbGs+LCA8JnVhcnRjbGs+OworCQkJY2xvY2tzID0gPCZsc3Bjcm0g
WlgyOTc1MjBWM19VQVJUMl9XQ0xLPiwKKwkJCQkgPCZsc3Bjcm0gWlgyOTc1MjBWM19VQVJUMl9Q
Q0xLPjsKIAkJCWNsb2NrLW5hbWVzID0gInVhcnRjbGsiLCAiYXBiX3BjbGsiOworCQkJcmVzZXRz
ID0gPCZsc3Bjcm0gWlgyOTc1MjBWM19VQVJUMl9SRVNFVD47CisKIAkJCXN0YXR1cyA9ICJkaXNh
YmxlZCI7CiAJCX07CiAJfTsKCi0tIAoyLjU0LjAKCgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlz
dApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5v
cmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
