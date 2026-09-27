Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 83C1DC9832F
	for <linux-phy@archiver.kernel.org>; Sun, 27 Sep 2026 20:14:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jH9YtLNkKxyI7gprkr75B/lPgtHBPydhuhc0Dt7SFzE=; b=2Yzgu0JPmsnja3
	ogmYStoSw7r4i4/brgMOoaSlHfmORkXByEM+IcRoKmbm5tl0C0DG3waeYrtY80spbd6sACi9r/xNe
	uBhkp1gqmkpUWaLdDVCjPApUAbq5TTO/v3rQqeQznn45+L5DnDB831cL6HpyJSNgYt3lNO+MNnhgZ
	rkrGbO0z5kwWRVhJ9S0n4GTjHfbvlqLOWvBRkRVkv92LviUk9RdUJM07jkRZ56hGmMMYvFHIUrSLJ
	1RoRwgourDMjt8Tk/Z+uW7XAjuVp3rlF/bQZ5/4f3b++RK6VUb5SouzyIwaV+jhoww6PeP7WiDKlX
	VI7kv1+WSFwDWw3xn/qA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xAvGO-0000000GnY5-0sd3;
	Sun, 27 Sep 2026 20:14:20 +0000
Received: from mail-wm2-x10.google.com ([2a00:1450:4864:31::10])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xAvGK-0000000GnTS-2VEK
	for linux-phy@lists.infradead.org;
	Sun, 27 Sep 2026 20:14:18 +0000
Received: by mail-wm2-x10.google.com with SMTP id 5b1f17b1804b1-49b912e4b11so12795625e9.3
        for <linux-phy@lists.infradead.org>; Sun, 27 Sep 2026 13:14:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1790540055; x=1791144855; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=jNSR66L+rsqa5I9ez3liVlAc8gcWggGRjRYsUUY8qc8=;
        b=FIHOZ6RHDHy9oXYdH2ALuyWhj/iKGUoAcbk6Zi/07h8l934yK3TBlkZGE+ANf1YFES
         QD7gtaaAR2rTP0F/u1dQ5fAU0RIIB0b2ojAE3M5d1ewk6qe5Bpz/cO5yCKtqQPnAWhhK
         +k6w9MrBn9wKCAPzbUHxCMwyyv4CA7GSUy33+j51wULaGADEhGz1hqehM2rElAgeusWq
         yfywx1qwpeLHO5gCUBID4cu6q3Bq5OcAZCsU16j0N8VVfTPxNIc+SoWXdMjxpQdz7hGO
         bANTIaKecojicLbtFwIe5HsXdmDvd1nQk/zfQD1Q0VCCpXwmlu6rXk7hJ5VvEIoT+GK4
         2vyw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1790540055; x=1791144855;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=jNSR66L+rsqa5I9ez3liVlAc8gcWggGRjRYsUUY8qc8=;
        b=P+GQ7O5aix8yt+qAJaweDBI63KmAgIN5B2Ln6MF2tgNANpRN35BqTLlX1sL2RYRi+z
         wse/2BzbG7dqkdiQ/+rvkyHWoYCNIDF3+nIh0ohYmR9aLZJM+wCt2/nazZC/dXBvHe6/
         vojSSL16Ua7Y81zqb/G4r1xrQFbbmofQGk+Uf/+Zq+URcaeJUiPZpOb10mJzN0Ifprl1
         A6WOwupxc4PoHcYrYE22gIUPuW6r/xs89b8MUYO6oQx5lWvnAmpqObfhleh22yhVopcz
         ydGIWof+MQ8ebVKKa/kXZ/pF6AbHN+Ymhvohq7cdeB1hKtkVmqZch9AqH8DYOuAApRx/
         XZng==
X-Forwarded-Encrypted: i=1; AKwUvBw3UqYVZS77/L2fr66+F7BPRD8+Ae+xfSCW/S8pUtjtEfWZBreiHDISLlCHq/5/dHMu4M3DBn25XgU=@lists.infradead.org
X-Gm-Message-State: AFuF++kNpKvzMewPOC+8EWadrfJJD17/blXTaOjAVrL5hEURCM5p/97k
	XuLKKLQn8LOvaAhbGVocqj2I9QoriWE0ql6N5p1cHF5AhGMgOo4nsGdB
X-Gm-Gg: AYBFou1AltlnmhO1lQMGelUVZsn1K3TjTytLTPlULExuKMFaZ9wAmM6Ic8IyLMEOh2j
	HTtwM2fUkm1VG46XTdxbvy7XZqgN43Dg1OCTE89pe30G8aR5ADHAVWe+G0pGSHfpBok52t05UhY
	N3w+WIQ+EdO3sw3ocGr3chaE57Ycrkx3jBPHn9v1BVehcCvwzP9blhLdqo2p/Xpgv2PJgzC+AP+
	iVMP7qlAVzGyIc7FWeFdFn8BlOV96/aZRWaB2gZ1Bllft65ElboCjMtgoTcb+F17+YfaWWPEvLF
	OLxVuKtQ4fjTcDvS6hcfItSYPBfHSZFHBQBaCfVVXz4zByGuPwEyGlYIbEY6lRrATinYNAEzcdY
	drVrf6/+tjLk+TKMuCiakJWYMW1IpriJhQAp5uXo1Um5ri1r2k5xTkbsrLNuz8NCOuU1hCcViDZ
	k5kJjKUpPsjWd3Qg6kZGUDDRK6oqVrof6nCeM6b3x79JLmXQHDsXBa/bpelUDuLjyWv9iGqiQxF
	ZvfS4tLZQ==
X-Received: by 2002:a05:600c:698e:b0:49c:fc6e:a3dc with SMTP id 5b1f17b1804b1-49fe66f1491mr205824235e9.27.1790540054611;
        Sun, 27 Sep 2026 13:14:14 -0700 (PDT)
Received: from [192.168.0.2] ([197.250.96.148])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-4887a34a570sm21781514f8f.13.2026.09.27.13.14.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 27 Sep 2026 13:14:14 -0700 (PDT)
From: =?utf-8?q?Stefan_D=C3=B6singer?= <stefandoesinger@gmail.com>
Date: Sun, 27 Sep 2026 23:13:33 +0300
Subject: [PATCH v13 05/13] Maintainers: Add entry for
 drivers/mfd/zte-zx297520v3-crm.c
MIME-Version: 1.0
Message-Id: <20260927-zx29clk-v13-5-70d8f673386c@gmail.com>
References: <20260927-zx29clk-v13-0-70d8f673386c@gmail.com>
In-Reply-To: <20260927-zx29clk-v13-0-70d8f673386c@gmail.com>
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
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=957;
 i=stefandoesinger@gmail.com; h=from:subject:message-id;
 bh=WAeuXX+lP9ApAmDxLig8RAtvnn0hthSMmgK7I/B9wz0=;
 b=owEBiQJ2/ZANAwAIAT0TvMhUTxoiAcsmYgBquXj0S3ciOtiZ4TddTH93kGsp4UXVIfMt7n79s
 r0ElotOL/CJAk8EAAEIADkWIQRDFvS2qgVbJ5UyXWw9E7zIVE8aIgUCarl49BsUgAAAAAAEAA5t
 YW51MiwyLjUrMS4xMiwyLDIACgkQPRO8yFRPGiKW/BAAmpXG/xbFgkzgIfhZqAl49ngI7YFzIm4
 nlz4d2lVrIFvPWl/QBMAgDtvhzz9OJNp6NEDOEqvNzyqT1VxxeNeQ4zJG6SUIAIgd20+957sTR3
 Nhs4WqZ4SuSyLxnIyK74JInCTsYoOHXd62yllcHYuxsPMrYNsqYj/zz7LJCSOkAasbwHg48i6Vq
 Tz64Img1+QUAIeCyAxKNi3fN1pNY6xASp9UIDE+ZeI9hLi/pHeNRnW1Mt4aCGvMt95mqSB+HbLB
 DDEyFDIh7VAHtst8NTkqz25FsA+hwBk3NH6L5qXbTHABfXFJHoOZ/HrdFRMQXjguwYT/0DAGiAN
 AOwbkj4Focx/6CCTNpcqMBIWFs4RpuauE1YVAUWGue8mlYgk5hVbNCFcfuhKj3wG34yv0TjUxwO
 QyphlSKqxLu14akUrCjKnmftBa4RlZEnuvs/bVzNQXAmdeY9wvGjMNyAl5fkZPLRDF589mBbs5h
 vkhnlFUiNa/kCEeCtncbCB2fFJmkAH9AFA0+Z328yU81QFo62/A90VHRK2J1zpBnuaS+ATNc2xh
 b9bVAEUy2R4AsN6qkkp4prbioRkXdYmz+s23mKBOSZAc9AnqbUcUiB7u5flJk45geDUcbvPNmFR
 g5XFhBuQSAb97ggmKp7jjD53F2dstl/Rmc3oo2k+B0lD9v1OMpfI=
X-Developer-Key: i=stefandoesinger@gmail.com; a=openpgp;
 fpr=4F9C2C8728019633893EBBB98CB81F9A72BBA155
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260927_131416_654843_8E0DAE2A 
X-CRM114-Status: GOOD (  10.67  )
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

VGhpcyB3YXMgYnJva2VuIG91dCBvZiB0aGUgcGF0Y2ggaW50cm9kdWNpbmcgdGhlIHp0ZS16eDI5
NzUyMHYzLWNybS5jCmRyaXZlciBieSBMZWUgSm9uZXMnIHJlcXVlc3QgdG8gcHJldmVudCBhIHBh
dGNoIGRlcGVuZGVuY3kganVzdCBkdWUgdG8KdGhlIE1BSU5UQUlORVJTIGZpbGUuIEkgcGxhbiB0
byBzZW5kIHRoaXMgcGF0Y2ggdG8gdGhlIG1mZCBsaXN0IG9uY2UgdGhlCmJpbmRpbmdzLCBjbG9j
ayBkcml2ZXIgYW5kIHRoZWlyIE1BSU5UQUlORVJTIGVudHJpZXMgYXJlIG1lcmdlZC4KClNpZ25l
ZC1vZmYtYnk6IFN0ZWZhbiBEw7ZzaW5nZXIgPHN0ZWZhbmRvZXNpbmdlckBnbWFpbC5jb20+Ci0t
LQogTUFJTlRBSU5FUlMgfCAxICsKIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKQoKZGlm
ZiAtLWdpdCBhL01BSU5UQUlORVJTIGIvTUFJTlRBSU5FUlMKaW5kZXggMDZkYmY5MzA1NTE4Li40
MWMyODczMTZkMGUgMTAwNjQ0Ci0tLSBhL01BSU5UQUlORVJTCisrKyBiL01BSU5UQUlORVJTCkBA
IC0zOTI3LDYgKzM5MjcsNyBAQCBGOglEb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3Mv
Y2xvY2svenRlLHp4Mjk3NTIwdjMtbWF0cml4Y3JtLnlhbWwKIEY6CURvY3VtZW50YXRpb24vZGV2
aWNldHJlZS9iaW5kaW5ncy9jbG9jay96dGUsengyOTc1MjB2My10b3Bjcm0ueWFtbAogRjoJYXJj
aC9hcm0vYm9vdC9kdHMvenRlLwogRjoJYXJjaC9hcm0vbWFjaC16dGUvCitGOglkcml2ZXJzL21m
ZC96dGUtengyOTc1MjB2My1jcm0uYwogRjoJaW5jbHVkZS9kdC1iaW5kaW5ncy9jbG9jay96dGUs
engyOTc1MjB2My1jbGsuaAogRjoJaW5jbHVkZS9kdC1iaW5kaW5ncy9waHkvenRlLHp4Mjk3NTIw
djMtdG9wY3JtLmgKIEY6CWluY2x1ZGUvZHQtYmluZGluZ3MvcmVzZXQvenRlLHp4Mjk3NTIwdjMt
cmVzZXQuaAoKLS0gCjIuNTUuMAoKCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBo
eUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2xpbnV4LXBoeQo=
