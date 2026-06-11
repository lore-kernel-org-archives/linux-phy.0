Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 56E75CD98C7
	for <linux-phy@archiver.kernel.org>; Thu, 11 Jun 2026 09:13:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=q42+JM+f6QZBZAlzxY4oHpug2InIwS0xFPDlBBsGPNc=; b=AkEMDsFROP633P
	gamVce8loWDA6LCiUzJmRfSUy74Lf14nWlM0XmT3jsphIftYcSivqalrh8+m6KP2wFxlRrqEAJaaV
	3SGHLM97iazFYG2Py6a/NNXxoueHqnIQeGKyNF3IDVYKWYO/j8MrFMJEYIsGdpB4lVptlV6Ge3Szi
	CJj3pqWz3uor5v5G3Ku2S9IZIW6tvVac3hM35jcDfihPa77UNIPStOhDWZeMbq7gv+VsSU/YO5VO7
	KqCWDEenrgK2w033pfTrdDgSXzbTC670BdFsj/CnaBipa19JfHyC/XahEqQAniQxXoFIRNdHE1jjm
	OP5ZVEcHx9O//QXpezGQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wXbTg-000000096Vi-0OPE;
	Thu, 11 Jun 2026 09:13:32 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wXbTf-000000096VV-2dL9
	for linux-phy@lists.infradead.org;
	Thu, 11 Jun 2026 09:13:31 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 04EC940258;
	Thu, 11 Jun 2026 09:13:31 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4E3A51F0089C;
	Thu, 11 Jun 2026 09:13:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1781169210;
	bh=BxXOFmqgKP//yNlaJchWiTOa6h3bEte8EY9Rwi4U/mE=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=P5BO8pcrwDPMEAjCp8GZuk8zUXnYlfcEZrOUg1x7lzyuj1V0m2o6uiNnh0bGMTGlY
	 ci0eDgeIPen4OiD7Ttm2DAW/Zn7E0E3F1wHEP1up/v+MH7m0TsifLukne+1QnWJkuC
	 qG54ld7AXhJvtoWR1Yxmzp0SQ1vzJ9LIvBnKB6dHGtvjX53DU6D8Fbn3YylUS15J57
	 GkAB4JKboMbSx/Y0a+xe9eoo+sirescKZLM4xeQ04zZHfamsEI/tFFoQi1gyFhTUVd
	 wCwOXKb7YDPJrVI3CmisAKluhmyZ4sNiB8M1OJHihaF7Hs39fL3j8+BTH3rh/Fr50s
	 0DjVZ4N5RSdQw==
Date: Thu, 11 Jun 2026 11:13:28 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Ramshouriesh <rshouriesh@gmail.com>
Cc: Bjorn Andersson <andersson@kernel.org>, 
	Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Mauro Carvalho Chehab <mchehab@kernel.org>, Bryan O'Donoghue <bryan.odonoghue@linaro.org>, 
	Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>, Loic Poulain <loic.poulain@oss.qualcomm.com>, 
	Bryan O'Donoghue <bod@kernel.org>, Vinod Koul <vkoul@kernel.org>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Aleksandrs Vinarskis <alex@vinarskis.com>, 
	linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-media@vger.kernel.org, linux-phy@lists.infradead.org
Subject: Re: [PATCH 3/9] media: i2c: hm1092: add Himax HM1092 mono NIR sensor
 driver
Message-ID: <20260611-sloppy-happy-pony-1efc8d@quoll>
References: <20260610-a14-himax-hm1092-v1-0-0c9907da47ed@gmail.com>
 <20260610-a14-himax-hm1092-v1-3-0c9907da47ed@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260610-a14-himax-hm1092-v1-3-0c9907da47ed@gmail.com>
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

T24gV2VkLCBKdW4gMTAsIDIwMjYgYXQgMDQ6Mzk6MjhQTSArMDUzMCwgUmFtc2hvdXJpZXNoIHdy
b3RlOgo+ICttb2R1bGVfaTJjX2RyaXZlcihobTEwOTJfaTJjX2RyaXZlcik7Cj4gKwo+ICtNT0RV
TEVfREVTQ1JJUFRJT04oIkhpbWF4IEhNMTA5MiBzZW5zb3IgZHJpdmVyIGRyYWZ0Iik7Cj4gK01P
RFVMRV9MSUNFTlNFKCJHUEwiKTsKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9tZWRpYS9pMmMvaG0x
MDkyX3JlZ3MuaCBiL2RyaXZlcnMvbWVkaWEvaTJjL2htMTA5Ml9yZWdzLmgKPiBuZXcgZmlsZSBt
b2RlIDEwMDY0NAo+IGluZGV4IDAwMDAwMDAwMDAwMC4uNGRmMmQ1YjQ5ZDgxCj4gLS0tIC9kZXYv
bnVsbAo+ICsrKyBiL2RyaXZlcnMvbWVkaWEvaTJjL2htMTA5Ml9yZWdzLmgKPiBAQCAtMCwwICsx
LDIyMyBAQAo+ICsvKiBTUERYLUxpY2Vuc2UtSWRlbnRpZmllcjogR1BMLTIuMCAqLwo+ICsvKiBI
TTEwOTIgcmVnaXN0ZXIgdGFibGVzIGV4dHJhY3RlZCBmcm9tIFF1YWxjb21tIENocm9tYXRpeCBz
ZW5zb3IgbW9kdWxlLgo+ICsgKiBTb3VyY2U6IGNvbS5xdGkuc2Vuc29ybW9kdWxlLmhtMTA5Mi5i
aW4KPiArICogR2VuZXJhdG9yOiBobTEwOTItcmUvZ2VuX2htMTA5Ml9yZWdzLnB5Cj4gKyAqIERP
IE5PVCBIQU5EIEVESVQg4oCUIHJlZ2VuZXJhdGUgZnJvbSB0aGUgYmluLgo+ICsgKi8KPiArCj4g
K3N0cnVjdCBobTEwOTJfcmVnIHsKPiArCXUxNiBhZGRyZXNzOwo+ICsJdTggdmFsOwo+ICt9Owo+
ICsKPiArc3RhdGljIGNvbnN0IHN0cnVjdCBobTEwOTJfcmVnIGhtMTA5Ml9pbml0X3JlZ3NbXSA9
IHsKCllvdSBtdXN0IE5PVCBkZWZpbmUgZGF0YSBpbiBoZWFkZXJzLiBUaGlzIGlzIG5vdCBob3cg
QyBpcyB3cml0dGVuIC0geW91Cmludml0ZSBkYXRhIGR1cGxpY2F0aW9uIHdpdGhvdXQgYW55IGdh
aW5zL2JlbmVmaXRzLgoKQmVzdCByZWdhcmRzLApLcnp5c3p0b2YKCgotLSAKbGludXgtcGh5IG1h
aWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmlu
ZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
