Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4D7DDC54F4C
	for <linux-phy@archiver.kernel.org>; Mon, 27 Jul 2026 18:26:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=F7a/ANw5T6N3hL2Lvlr0avGJpWBtwlJs3olX4VnZ9F4=; b=H9thWQRVjhNTp4
	gJZUmJQtv0ZGvWCU9QsZj7eEx/bFxHdcWXFtNFoB23ln3caoLhgxDhqEbrfkMg+psNltfemODpK3a
	svT5LuPyk6+6Ro/vXbAiHfzQgv+b6/jjpMm4cETk9QpxFE595Sc2ZeXh+sVWalyIWdnR93QEQ711u
	j+niPu88sTr2sAS2HzmvwSFPiKQHXzjReoxjSWuMR/EGVNxr/eGmGAFxXbVuIyjYe0qt339buSJ2q
	nMl0qXi5Y81IZ1jDLvaMhq/Br3bPR4vd/iuDj6n3YjDpv7VzigNgYYxF4um1Ykkx05D+n6z9t4UGJ
	QDkUnyAD+cpIuQf6q3nw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1woQ28-00000003eZu-41fb;
	Mon, 27 Jul 2026 18:26:36 +0000
Received: from mail-wm1-x32b.google.com ([2a00:1450:4864:20::32b])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1woQ20-00000003eQP-3CrY
	for linux-phy@lists.infradead.org;
	Mon, 27 Jul 2026 18:26:32 +0000
Received: by mail-wm1-x32b.google.com with SMTP id 5b1f17b1804b1-49553515a8bso36156305e9.1
        for <linux-phy@lists.infradead.org>; Mon, 27 Jul 2026 11:26:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1785176787; x=1785781587; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=qAtpWFpXBCB2TwlFP1ROJK7e4/4ihHdc0dQDuwgQXcs=;
        b=Tx00oCcYjLQZdLlDCsKU7qcvUBjrSUkH877xflxP+7r8lDFTzMesnR8EE2IOPY0580
         G7zkjIIdz7Wy30DABzZ/8fzt/qGlMlUbRKcrOASmS9B4QxWtjKLnDjeH1e8Moj+c67BG
         zNeFQb3Jx1upw14v+BHN2/EIPk8WSOpurj/PB31xrFcMNiFjgPUclYF6oN/Rxf0sDgGn
         cl9iAp9Op+RoOiIxqI8v3UMwyNf1l9Ip4M1LfWtF1WSrY7qZLOAlTuhjGv+F+0sGgrR8
         R4Hv4Sqy/TUfOzEDhaKoU0ooy9+7UB60rvfrwe/WX4J5fxq0JCbX3RTYUPC23T9N4B+W
         I5/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1785176787; x=1785781587;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=qAtpWFpXBCB2TwlFP1ROJK7e4/4ihHdc0dQDuwgQXcs=;
        b=T/dp0MlTJGOEcLtVi3Dc+Z35c1rVf6fe0gb5UrcHReKh4SDK9l8umHHdiMO+7OSyc3
         YUQQEPS3o/XDBcOuBAQ19Omfe05Y+T1kcgRCbK5/vwjJEc9k6RJliTgNGC3sR6OlWi65
         QbPWKp1kdk7PbjYD1FUqyfVebDvleuzFJ6IodUw7MSnScaonhqoZRonRh6Ec1uwfBNEf
         Wrwv+4pvozvf4HCGaMKj8G7/FHJ6uNek9wTp3lfgdpuAYByORy8qbgHhVMnXYeKD4ZdR
         JM3u4zBNxJ/9zB1y3nJJGLt2jdIvIxuwvxFPjCA3cwRifTJsbnGPotYQHZuWevHr0uxs
         btmA==
X-Forwarded-Encrypted: i=1; AHgh+Ro+MYf/m0waja/N59FY3L/tZlFYGz7I3Mb4MMoMFNv7PCiQXveOdHI//2tYme6wyTz8l+fJMpCRViU=@lists.infradead.org
X-Gm-Message-State: AOJu0Yy8HT3yc6NXvOLZetkksB9QY1QG6jvcE1K//5KxJsWaGO0JpJER
	COR4TuHodCSehbWunMq8cBBeAXPa1XAa0N6fPYQ+15HRtJhW3K8TXdZ+
X-Gm-Gg: AR+sD12yFMOOd+3YfKYHKK4gKwYObJZkjEGIyeQkf2wcrPU7fBYkr0ZqtKTyQOPrtpL
	oUNsOz11cyKaFuS0nSkYAn7XUK5wFm7kQlZrDxrsdC87kp2QVt8Y/1e7OrsQZgShS5h076COdMW
	CigeJsNY+KjycD7t/zXHZOYD9dWGtqKHkBADgr5LUs1g21p8cXY7R0XqOHJGmXwJByzIViZh06e
	OV6sogM8wXH7TUIAvOGSJqXGRusZe5OetKorMRgWfJpGEW7KCWL2koB76obsSzdUepIYm6Y6PXK
	Y/6u/Diios4V3zpVieF+PEVU9k/tbfnoOxOcJWO3ctJ8pWFl7NFlloG59naxDTZscAG7IznADgs
	2WqroPHRNt+7ojjS3NuAN6dTfGDZqsG0BbTvplloQ9f7SmLQIZ13Hw9LoiaOq4VTbYHPhgciCIV
	Jyd/7fr5kidZ0Luj4RSNozYCc=
X-Received: by 2002:a05:600c:6986:b0:495:3f48:5df2 with SMTP id 5b1f17b1804b1-496b5722341mr144689655e9.29.1785176786691;
        Mon, 27 Jul 2026 11:26:26 -0700 (PDT)
Received: from [192.168.0.2] ([197.250.51.166])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-47f85c53052sm50689288f8f.18.2026.07.27.11.26.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 27 Jul 2026 11:26:26 -0700 (PDT)
From: =?utf-8?q?Stefan_D=C3=B6singer?= <stefandoesinger@gmail.com>
Date: Mon, 27 Jul 2026 21:24:27 +0300
Subject: [PATCH v8 12/12] ARM: dts: zte: Declare zx297520v3 CRM device
 nodes
MIME-Version: 1.0
Message-Id: <20260727-zx29clk-v8-12-7a107b00f1dd@gmail.com>
References: <20260727-zx29clk-v8-0-7a107b00f1dd@gmail.com>
In-Reply-To: <20260727-zx29clk-v8-0-7a107b00f1dd@gmail.com>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=5268;
 i=stefandoesinger@gmail.com; h=from:subject:message-id;
 bh=9WNPKFjal9TFI7ztjsCWddsA0DdgrD8Tk7Zv4ZNs/pI=;
 b=owEBiQJ2/ZANAwAIAT0TvMhUTxoiAcsmYgBqZ6J7FbZD2m/JMVFcXnBCdwNjgRof/lPXlFIYI
 Eof9rYGcc2JAk8EAAEIADkWIQRDFvS2qgVbJ5UyXWw9E7zIVE8aIgUCameiexsUgAAAAAAEAA5t
 YW51MiwyLjUrMS4xMiwyLDIACgkQPRO8yFRPGiIpNg/8CjhYfS1jEJRHFiBgBHY94DxsbwC80LV
 FJ+iqaQIJn9SQuRM8mcsHnPvkhxHspQMK/XJoHvbxDakU6CLMUjEUC/UE23nvkXuFgYGRU/bm/K
 nM30erogA/6Ee87GbATgpz/U4rwxXmsnszROwKfVBppkIKxtV4+rGEuZNe4xaa94+Kft6zZgU3a
 V6G20JybDFvY0lxCpFFJlXMDsEMMUelTb+MkDUP2C5zVJRrgbnbgoXH01jvVZXRbQ2CB6I8DA8f
 UEm03N9S9rFjiivNza1972Ecx7uJQxjeIGgTLegxJdPk21AQZmdz9yggFPWh6aEbjRw828osEss
 NUQVKk18v7d92C2XIQQRUT+qpl4BIHR6qeMfnP6SpTq/m6SWKz/MiVLL2NWLgopShaX7HImgAVx
 /50BLdsMcVsUOsPTZJ/R78p75U2CJ5D9eAdc8WDLV6XYnHQfJmeuoDyFG/jEAayFsrLaPQEi75A
 ldzwsNiYqXbZAYmPVNnaTyB0ZiZTgpGRA/+r2OTLWullukCrBP+WcqVxH59ovKFr+Hn10RGFG1/
 +FVupuf6muERBXFswb3B5VDtNewieyxjenmfbinlRAnBLYtlOX9wL88glUI0pIMrDn1uAiv+hkh
 gxxePgHKcQ6WxmDfdh35grba3iONAhD6V3AuPNNWN5e9ErGqwK0g=
X-Developer-Key: i=stefandoesinger@gmail.com; a=openpgp;
 fpr=4F9C2C8728019633893EBBB98CB81F9A72BBA155
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260727_112629_191805_846A1A7A 
X-CRM114-Status: GOOD (  13.48  )
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
biA3OgpBZGQgcGh5IG5vZGVzIHRvIHRvcGNybQpSZW1vdmUgc3lzY29uIGZyb20gbWF0cml4Y2xr
IGFnYWluCkFkYXB0IHJlbW92ZSBub3ctcmVtb3ZlZCBleHRyYSBjbGsgaW5wdXRzIGZyb20gbWF0
cml4CkFkZCByZXNldCB0byBMU1AKb3NjMjZtIC0+IGNsb2NrLTI2bSBmb3IgdGhlIGZpeGVkIHJh
dGUgY2xvY2tzLCBsaWtld2lzZSBmb3IgMzJrCgpWZXJzaW9uIDY6CkFkZCBzeXNjb24gdG8gbWF0
cml4Y2xrCgpWZXJzaW9uIDU6ClJlLW5hbWUgZnJvbSAqY2xrIHRvICpjcm0KQWRkIHRoZSBzeXNj
b24tcmVib290IG5vZGUgaGVyZSBiZWNhdXNlIHRoZSBiaW5kaW5nIHJlcXVpcmVzIGl0ClJlLWFk
ZCBhY2NpZGVudGFsbHkgZHJvcHBlZCB1YXJ0MiBJUlEKLS0tCiBhcmNoL2FybS9ib290L2R0cy96
dGUvengyOTc1MjB2My5kdHNpIHwgODQgKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKy0t
LS0KIDEgZmlsZSBjaGFuZ2VkLCA3NiBpbnNlcnRpb25zKCspLCA4IGRlbGV0aW9ucygtKQoKZGlm
ZiAtLWdpdCBhL2FyY2gvYXJtL2Jvb3QvZHRzL3p0ZS96eDI5NzUyMHYzLmR0c2kgYi9hcmNoL2Fy
bS9ib290L2R0cy96dGUvengyOTc1MjB2My5kdHNpCmluZGV4IGExNmMzMGExNjRiYi4uOGQ5MTE3
OTU5MzZiIDEwMDY0NAotLS0gYS9hcmNoL2FybS9ib290L2R0cy96dGUvengyOTc1MjB2My5kdHNp
CisrKyBiL2FyY2gvYXJtL2Jvb3QvZHRzL3p0ZS96eDI5NzUyMHYzLmR0c2kKQEAgLTQsNiArNCw4
IEBACiAgKi8KIAogI2luY2x1ZGUgPGR0LWJpbmRpbmdzL2ludGVycnVwdC1jb250cm9sbGVyL2Fy
bS1naWMuaD4KKyNpbmNsdWRlIDxkdC1iaW5kaW5ncy9yZXNldC96dGUsengyOTc1MjB2My1yZXNl
dC5oPgorI2luY2x1ZGUgPGR0LWJpbmRpbmdzL2Nsb2NrL3p0ZSx6eDI5NzUyMHYzLWNsay5oPgog
CiAvIHsKIAkjYWRkcmVzcy1jZWxscyA9IDwxPjsKQEAgLTIwLDEzICsyMiwxNiBAQCBjcHVAMCB7
CiAJCX07CiAJfTsKIAotCS8qIEJhc2UgYnVzIGNsb2NrIGFuZCBkZWZhdWx0IGZvciB0aGUgVUFS
VC4gSXQgd2lsbCBiZSByZXBsYWNlZCBvbmNlIGEgY2xvY2sgZHJpdmVyIGhhcwotCSAqIGJlZW4g
YWRkZWQuCi0JICovCi0JdWFydGNsazogdWFydGNsay0yNjAwMDAwMCB7Ci0JCSNjbG9jay1jZWxs
cyA9IDwwPjsKKwlvc2MyNm06IGNsb2NrLTI2bSB7CiAJCWNvbXBhdGlibGUgPSAiZml4ZWQtY2xv
Y2siOwogCQljbG9jay1mcmVxdWVuY3kgPSA8MjYwMDAwMDA+OworCQkjY2xvY2stY2VsbHMgPSA8
MD47CisJfTsKKworCW9zYzMyazogY2xvY2stMzJrIHsKKwkJY29tcGF0aWJsZSA9ICJmaXhlZC1j
bG9jayI7CisJCWNsb2NrLWZyZXF1ZW5jeSA9IDwzMjc2OD47CisJCSNjbG9jay1jZWxscyA9IDww
PjsKIAl9OwogCiAJdGltZXIgewpAQCAtNzAsMTMgKzc1LDc0IEBAIGdpYzogaW50ZXJydXB0LWNv
bnRyb2xsZXJAZjIwMDAwMDAgewogCQkJICAgICAgPDB4ZjIwNDAwMDAgMHgyMDAwMD47CiAJCX07
CiAKKwkJdG9wY3JtOiBjbG9jay1jb250cm9sbGVyQDEzYjAwMCB7CisJCQljb21wYXRpYmxlID0g
Inp0ZSx6eDI5NzUyMHYzLXRvcGNybSIsICJzeXNjb24iOworCQkJcmVnID0gPDB4MDAxM2IwMDAg
MHg0MDA+OworCQkJY2xvY2tzID0gPCZvc2MyNm0+LCA8Jm9zYzMyaz47CisJCQljbG9jay1uYW1l
cyA9ICJvc2MyNm0iLCAib3NjMzJrIjsKKwkJCWludGVycnVwdHMgPSA8R0lDX1NQSSA0MiBJUlFf
VFlQRV9FREdFX1JJU0lORz4sCisJCQkJICAgICA8R0lDX1NQSSA0MyBJUlFfVFlQRV9FREdFX1JJ
U0lORz4sCisJCQkJICAgICA8R0lDX1NQSSA0NSBJUlFfVFlQRV9FREdFX1JJU0lORz4sCisJCQkJ
ICAgICA8R0lDX1NQSSA0NiBJUlFfVFlQRV9FREdFX1JJU0lORz47CisJCQlpbnRlcnJ1cHQtbmFt
ZXMgPSAidXNiLXVwIiwgInVzYi1kb3duIiwgImhzaWMtdXAiLCAiaHNpYy1kb3duIjsKKwkJCXJl
c2V0cyA9IDwmdG9wY3JtIFpYMjk3NTIwVjNfVVNCX1BIWV9SRVNFVD4sCisJCQkJIDwmdG9wY3Jt
IFpYMjk3NTIwVjNfSFNJQ19QSFlfUkVTRVQ+OworCQkJcmVzZXQtbmFtZXMgPSAidXNiIiwgImhz
aWMiOworCQkJI2Nsb2NrLWNlbGxzID0gPDE+OworCQkJI3BoeS1jZWxscyA9IDwxPjsKKwkJCSNy
ZXNldC1jZWxscyA9IDwxPjsKKworCQkJc3lzY29uLXJlYm9vdCB7CisJCQkJY29tcGF0aWJsZSA9
ICJzeXNjb24tcmVib290IjsKKwkJCQlvZmZzZXQgPSA8MHgwPjsKKwkJCQl2YWx1ZSA9IDwweDE+
OworCQkJCW1hc2sgPSA8MHgxPjsKKwkJCX07CisJCX07CisKKwkJbWF0cml4Y3JtOiBjbG9jay1j
b250cm9sbGVyQDEzMDYwMDAgeworCQkJY29tcGF0aWJsZSA9ICJ6dGUsengyOTc1MjB2My1tYXRy
aXhjcm0iOworCQkJcmVnID0gPDB4MDEzMDYwMDAgMHg0MDA+OworCQkJY2xvY2tzID0gPCZvc2My
Nm0+LCA8Jm9zYzMyaz4sCisJCQkJIDwmdG9wY3JtIFpYMjk3NTIwVjNfTVBMTD4sIDwmdG9wY3Jt
IFpYMjk3NTIwVjNfTVBMTF9ENT4sCisJCQkJIDwmdG9wY3JtIFpYMjk3NTIwVjNfRFBMTD4sIDwm
dG9wY3JtIFpYMjk3NTIwVjNfR1BMTD4sCisJCQkJIDwmdG9wY3JtIFpYMjk3NTIwVjNfR1BMTF9E
Mj4sIDwmdG9wY3JtIFpYMjk3NTIwVjNfR0FURURfT1NDMjZNPjsKKwkJCWNsb2NrLW5hbWVzID0g
Im9zYzI2bSIsICJvc2MzMmsiLCAibXBsbCIsICJtcGxsLWQ1IiwgImRwbGwiLAorCQkJCSAgICAg
ICJncGxsIiwgImdwbGwtZDIiLCAid2Nsay1vc2MyNm0iOworCQkJI2Nsb2NrLWNlbGxzID0gPDE+
OworCQkJI2h3bG9jay1jZWxscyA9IDwxPjsKKwkJCSNyZXNldC1jZWxscyA9IDwxPjsKKwkJfTsK
KworCQlsc3Bjcm06IGNsb2NrLWNvbnRyb2xsZXJAMTQwMDAwMCB7CisJCQljb21wYXRpYmxlID0g
Inp0ZSx6eDI5NzUyMHYzLWxzcGNybSI7CisJCQlyZWcgPSA8MHgwMTQwMDAwMCAweDEwMD47CisJ
CQkjY2xvY2stY2VsbHMgPSA8MT47CisJCQkjcmVzZXQtY2VsbHMgPSA8MT47CisKKwkJCWNsb2Nr
cyA9IDwmbWF0cml4Y3JtIFpYMjk3NTIwVjNfTFNQX01QTExfRDVfV0NMSz4sCisJCQkJIDwmbWF0
cml4Y3JtIFpYMjk3NTIwVjNfTFNQX01QTExfRDRfV0NMSz4sCisJCQkJIDwmbWF0cml4Y3JtIFpY
Mjk3NTIwVjNfTFNQX01QTExfRDZfV0NMSz4sCisJCQkJIDwmbWF0cml4Y3JtIFpYMjk3NTIwVjNf
TFNQX01QTExfRDhfV0NMSz4sCisJCQkJIDwmbWF0cml4Y3JtIFpYMjk3NTIwVjNfTFNQX01QTExf
RDEyX1dDTEs+LAorCQkJCSA8Jm1hdHJpeGNybSBaWDI5NzUyMFYzX0xTUF9PU0MyNk1fV0NMSz4s
CisJCQkJIDwmbWF0cml4Y3JtIFpYMjk3NTIwVjNfTFNQX09TQzMyS19XQ0xLPiwKKwkJCQkgPCZt
YXRyaXhjcm0gWlgyOTc1MjBWM19MU1BfUENMSz4sCisJCQkJIDwmbWF0cml4Y3JtIFpYMjk3NTIw
VjNfTFNQX1RETV9XQ0xLPiwKKwkJCQkgPCZtYXRyaXhjcm0gWlgyOTc1MjBWM19MU1BfRFBMTF9E
NF9XQ0xLPjsKKwkJCWNsb2NrLW5hbWVzID0gIm1wbGwtZDUiLCAibXBsbC1kNCIsICJtcGxsLWQ2
IiwgIm1wbGwtZDgiLCAibXBsbC1kMTIiLAorCQkJCSAgICAgICJvc2MyNm0iLCAib3NjMzJrIiwg
InBjbGsiLCAidGRtLXdjbGsiLCAiZHBsbC1kNCI7CisJCQlyZXNldHMgPSA8Jm1hdHJpeGNybSBa
WDI5NzUyMFYzX0xTUF9SRVNFVD47CisJCX07CisKIAkJdWFydDA6IHNlcmlhbEAxMzEwMDAgewog
CQkJY29tcGF0aWJsZSA9ICJhcm0scGwwMTEiLCAiYXJtLHByaW1lY2VsbCI7CiAJCQlhcm0scHJp
bWVjZWxsLXBlcmlwaGlkID0gPDB4MDAxOGMwMTE+OwogCQkJcmVnID0gPDB4MDAxMzEwMDAgMHgx
MDAwPjsKIAkJCWludGVycnVwdHMgPSA8R0lDX1NQSSAwIElSUV9UWVBFX0xFVkVMX0hJR0g+Owot
CQkJY2xvY2tzID0gPCZ1YXJ0Y2xrPiwgPCZ1YXJ0Y2xrPjsKKwkJCWNsb2NrcyA9IDwmdG9wY3Jt
IFpYMjk3NTIwVjNfVUFSVDBfV0NMSz4sIDwmdG9wY3JtIFpYMjk3NTIwVjNfVUFSVDBfUENMSz47
CiAJCQljbG9jay1uYW1lcyA9ICJ1YXJ0Y2xrIiwgImFwYl9wY2xrIjsKKwkJCXJlc2V0cyA9IDwm
dG9wY3JtIFpYMjk3NTIwVjNfVUFSVDBfUkVTRVQ+OwogCQkJc3RhdHVzID0gImRpc2FibGVkIjsK
IAkJfTsKIApAQCAtODUsOCArMTUxLDkgQEAgdWFydDE6IHNlcmlhbEAxNDA4MDAwIHsKIAkJCWFy
bSxwcmltZWNlbGwtcGVyaXBoaWQgPSA8MHgwMDE4YzAxMT47CiAJCQlyZWcgPSA8MHgwMTQwODAw
MCAweDEwMDA+OwogCQkJaW50ZXJydXB0cyA9IDxHSUNfU1BJIDEgSVJRX1RZUEVfTEVWRUxfSElH
SD47Ci0JCQljbG9ja3MgPSA8JnVhcnRjbGs+LCA8JnVhcnRjbGs+OworCQkJY2xvY2tzID0gPCZs
c3Bjcm0gWlgyOTc1MjBWM19VQVJUMV9XQ0xLPiwgPCZsc3Bjcm0gWlgyOTc1MjBWM19VQVJUMV9Q
Q0xLPjsKIAkJCWNsb2NrLW5hbWVzID0gInVhcnRjbGsiLCAiYXBiX3BjbGsiOworCQkJcmVzZXRz
ID0gPCZsc3Bjcm0gWlgyOTc1MjBWM19VQVJUMV9SRVNFVD47CiAJCQlzdGF0dXMgPSAiZGlzYWJs
ZWQiOwogCQl9OwogCkBAIC05NSw4ICsxNjIsOSBAQCB1YXJ0Mjogc2VyaWFsQDE0MGQwMDAgewog
CQkJYXJtLHByaW1lY2VsbC1wZXJpcGhpZCA9IDwweDAwMThjMDExPjsKIAkJCXJlZyA9IDwweDAx
NDBkMDAwIDB4MTAwMD47CiAJCQlpbnRlcnJ1cHRzID0gPEdJQ19TUEkgMiBJUlFfVFlQRV9MRVZF
TF9ISUdIPjsKLQkJCWNsb2NrcyA9IDwmdWFydGNsaz4sIDwmdWFydGNsaz47CisJCQljbG9ja3Mg
PSA8JmxzcGNybSBaWDI5NzUyMFYzX1VBUlQyX1dDTEs+LCA8JmxzcGNybSBaWDI5NzUyMFYzX1VB
UlQyX1BDTEs+OwogCQkJY2xvY2stbmFtZXMgPSAidWFydGNsayIsICJhcGJfcGNsayI7CisJCQly
ZXNldHMgPSA8JmxzcGNybSBaWDI5NzUyMFYzX1VBUlQyX1JFU0VUPjsKIAkJCXN0YXR1cyA9ICJk
aXNhYmxlZCI7CiAJCX07CiAJfTsKCi0tIAoyLjU0LjAKCgotLSAKbGludXgtcGh5IG1haWxpbmcg
bGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVh
ZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
