Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9BF3FC2D0CD
	for <linux-phy@archiver.kernel.org>; Wed, 21 May 2025 14:14:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Y153RqdaFyCavrHypqa6RQAhurcMEFc65xsuX+6yFaA=; b=vikrahhVXdiA0V
	2bMwm1KISZRjkmhU/iN3VFNQDjffW8yZvi3EGfG8ZCnFrTx1K0ae4QNqqR8qyb/9PuikCA4ncPo0n
	fVrNaPULeyNbHHfxrTSr8DGoW86+NkXRk+BxWCmcT+0pHvOaMtLAXqCnsHjOaqSoBpa3jSQOQ/RGt
	0JyE9JqUorOkg5iLDVDSx0197z7bgmjx+kgTgkXahfwu446lEI4sCsglWCdCSuCYMyixZExCLKGcm
	WG0dJuukRIK0Y4nRnpv4+su8VyhtsnkDduDZ0LSIfuCF3F+f6tzuqmjr0WHUTZHA8Opb95nr6G7vC
	UwhFeBpH5hCoB1IxgoGw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uHkCr-0000000G4N4-1TjN;
	Wed, 21 May 2025 14:14:05 +0000
Received: from mail-pj1-x102a.google.com ([2607:f8b0:4864:20::102a])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uHjpt-0000000FzoO-0l1f
	for linux-phy@lists.infradead.org;
	Wed, 21 May 2025 13:50:22 +0000
Received: by mail-pj1-x102a.google.com with SMTP id 98e67ed59e1d1-30e542e4187so4993815a91.3
        for <linux-phy@lists.infradead.org>; Wed, 21 May 2025 06:50:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1747835420; x=1748440220; darn=lists.infradead.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=/dGaJJt/HUGpCICV62UDPM8z7U1rRYbsKxH587Gzyjg=;
        b=OwQt1cYH9DW2OQYKV5pk35M/to59ea0aLxsCwLtfKnlo3XIRG7agDaAZcFsQxALnvL
         QoZ/bYayFHZwG4hX7TGoD5L5oYoYC1qE70LNO3004GvC3sqgXnU/1h4hyfsMW218iE6j
         wYBtakuFo3GiaTspXjbeSMO0P30sDnes2/qnYHYaBr3OnUit8bR71fEV+x9aVboV3DXR
         QZiRq64MJaWwZ6z53fuIw4DEO7ACLaxnwefywQkHzaC2+ndI37912YOpJJyZWWVxedBo
         py/FMr8VYCEQhE9wlaZRYAMD33p1ICE5hjNlThoZy+aAVrUEIUiofjPSJOZW44PZZvub
         vjiw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747835420; x=1748440220;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=/dGaJJt/HUGpCICV62UDPM8z7U1rRYbsKxH587Gzyjg=;
        b=bn/nhJ8iRePOwtUr7g/IHH3l8KwLDHtFCX2YuOQWDY00xvJKjy03TFpQVIcs9braEO
         CoEU+glwUcBtaXPXB36gZQKoNtP7+bI3HxORvyTe//E8c+h9w4OTENgYL9YqzhTJWM5U
         S12dsimKKUTwdDEtA2bZhVAjfQVF1FpbW8b08nq6eOC3PZ3DZtX2I/TTeBAxNcaZQMrK
         79we84PxmbfJUX8B+pEnqsAuLJhwzX1IP1vsVPgvUQBP6pPOciI9+i/UIJvqSEDSzzER
         isAVfwVTzoJSkuvGpFBILhzEBnkNGwN2Nd/gcLerxlXBdGVfSEEe2jej9yO930TeoNBN
         Acng==
X-Forwarded-Encrypted: i=1; AJvYcCWjA63diPWk/xzvfZt9CdmKwdfuiFcLWKIsXpSUcxPjDUMTAjw4JDhtiAyyJvqWBLFKDO/O9egDutI=@lists.infradead.org
X-Gm-Message-State: AOJu0Ywjk+uVqim421q0v+RVLjub85VEAZ34GhCRVBJrO13DiCYt3mUG
	uzB/zsi5QEOF9kff+4XzwGJNnjtgFmddE2lRCwVKHCEdg4bdjjj6VERkJbBHPn50VA==
X-Gm-Gg: ASbGncsd8oNVTi9Yoe1qIAX6KdMlWDLSgPXytpiZTY/hTM3TpkhjdRq7Lrl2XZyaHbd
	ROVA8wvA0NEZoAw+80lYcxoDOjE2VMatJr7gpzz/3Fd9ARIiBkD7zT/XzIxa5lZrb4P2VtsRAlT
	efnBkhNJDqwG/Ts6i0OqRz+0Qz5+fpIy6XtYzgQ/tbEEOyeAV8MD5/FMCZ+CeNLBKQXlDLEuIVP
	yhSzRE5RRFR/xO/gOn0ZFxZ5W2g/57cQ0D284+5v886ldsUtEtPKzHrapo+Ei5182cAfpRMMKuA
	lZGLVkr/GR+iQaN2rTSDdGQjqbBjWPJ5iUoLnj7MPGhKybwwIWbYxVutrcOp
X-Google-Smtp-Source: AGHT+IGfMgSZ1dyR31dRP9yWXfsiqsI0mIJuLiXZvdVwQ7ECl4Z67oe/m7O50OQnSlM0QTvqwXQ/Jg==
X-Received: by 2002:a17:90b:4f4e:b0:310:8d9a:eb1c with SMTP id 98e67ed59e1d1-3108d9aeb4fmr4087282a91.21.1747835420269;
        Wed, 21 May 2025 06:50:20 -0700 (PDT)
Received: from thinkpad ([120.60.52.42])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-30f365b22a9sm3660292a91.6.2025.05.21.06.50.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 21 May 2025 06:50:19 -0700 (PDT)
Date: Wed, 21 May 2025 14:50:12 +0100
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: Nitin Rawat <quic_nitirawa@quicinc.com>
Cc: vkoul@kernel.org, kishon@kernel.org, 
	James.Bottomley@hansenpartnership.com, martin.petersen@oracle.com, bvanassche@acm.org, 
	andersson@kernel.org, neil.armstrong@linaro.org, dmitry.baryshkov@oss.qualcomm.com, 
	konrad.dybcio@oss.qualcomm.com, quic_rdwivedi@quicinc.com, quic_cang@quicinc.com, 
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org, 
	linux-scsi@vger.kernel.org
Subject: Re: [PATCH V5 08/11] phy: qcom-qmp-ufs: refactor qmp_ufs_power_off
Message-ID: <heork6adpw526tfljo2cpexevplpjrlgjgeyobidvzqlsubzlc@6vn6jykxpwqx>
References: <20250515162722.6933-1-quic_nitirawa@quicinc.com>
 <20250515162722.6933-9-quic_nitirawa@quicinc.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250515162722.6933-9-quic_nitirawa@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250521_065021_225525_EE6459F8 
X-CRM114-Status: GOOD (  15.11  )
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

T24gVGh1LCBNYXkgMTUsIDIwMjUgYXQgMDk6NTc6MTlQTSArMDUzMCwgTml0aW4gUmF3YXQgd3Jv
dGU6Cj4gSW4gcW1wX3Vmc19wb3dlcl9vZmYsIHRoZSBQSFkgaXMgYWxyZWFkeSBwb3dlcmVkIGRv
d24gYnkgYXNzZXJ0aW5nCj4gUVBIWV9QQ1NfUE9XRVJfRE9XTl9DT05UUk9MLiBUaGVyZWZvcmUs
IGFkZGl0aW9uYWwgcGh5X3Jlc2V0IGFuZAo+IHN0b3BwaW5nIFNlckRlcyBhcmUgdW5uZWNlc3Nh
cnkuIEFsc28gdGhpcyBhcHByb2FjaCBkb2VzIG5vdAo+IGFsaWduIHdpdGggdGhlIHBoeSBIVyBw
cm9ncmFtbWluZyBndWlkZS4KPiAKPiBUaHVzLCByZWZhY3RvciBxbXBfdWZzX3Bvd2VyX29mZiB0
byByZW1vdmUgdGhlIHBoeV9yZXNldCBhbmQgc3RvcAo+IFNlckRlcyBjYWxscyB0byBzaW1wbGlm
eSB0aGUgY29kZSBhbmQgZW5zdXJlIGFsaWdubWVudCB3aXRoIHRoZSBQSFkKPiBIVyBwcm9ncmFt
bWluZyBndWlkZS4KPiAKPiBTaWduZWQtb2ZmLWJ5OiBOaXRpbiBSYXdhdCA8cXVpY19uaXRpcmF3
YUBxdWljaW5jLmNvbT4KClJldmlld2VkLWJ5OiBNYW5pdmFubmFuIFNhZGhhc2l2YW0gPG1hbml2
YW5uYW4uc2FkaGFzaXZhbUBsaW5hcm8ub3JnPgoKLSBNYW5pCgo+IFJldmlld2VkLWJ5OiBEbWl0
cnkgQmFyeXNoa292IDxkbWl0cnkuYmFyeXNoa292QG9zcy5xdWFsY29tbS5jb20+Cj4gLS0tCj4g
IGRyaXZlcnMvcGh5L3F1YWxjb21tL3BoeS1xY29tLXFtcC11ZnMuYyB8IDcgLS0tLS0tLQo+ICAx
IGZpbGUgY2hhbmdlZCwgNyBkZWxldGlvbnMoLSkKPiAKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9w
aHkvcXVhbGNvbW0vcGh5LXFjb20tcW1wLXVmcy5jIGIvZHJpdmVycy9waHkvcXVhbGNvbW0vcGh5
LXFjb20tcW1wLXVmcy5jCj4gaW5kZXggZmNhNDdlNWU4YmYwLi5hYmZlYmYwNDM1ZDggMTAwNjQ0
Cj4gLS0tIGEvZHJpdmVycy9waHkvcXVhbGNvbW0vcGh5LXFjb20tcW1wLXVmcy5jCj4gKysrIGIv
ZHJpdmVycy9waHkvcXVhbGNvbW0vcGh5LXFjb20tcW1wLXVmcy5jCj4gQEAgLTE4MjcsMTMgKzE4
MjcsNiBAQCBzdGF0aWMgaW50IHFtcF91ZnNfcG93ZXJfb2ZmKHN0cnVjdCBwaHkgKnBoeSkKPiAg
CXN0cnVjdCBxbXBfdWZzICpxbXAgPSBwaHlfZ2V0X2RydmRhdGEocGh5KTsKPiAgCWNvbnN0IHN0
cnVjdCBxbXBfcGh5X2NmZyAqY2ZnID0gcW1wLT5jZmc7Cj4gIAo+IC0JLyogUEhZIHJlc2V0ICov
Cj4gLQlpZiAoIWNmZy0+bm9fcGNzX3N3X3Jlc2V0KQo+IC0JCXFwaHlfc2V0Yml0cyhxbXAtPnBj
cywgY2ZnLT5yZWdzW1FQSFlfU1dfUkVTRVRdLCBTV19SRVNFVCk7Cj4gLQo+IC0JLyogc3RvcCBT
ZXJEZXMgKi8KPiAtCXFwaHlfY2xyYml0cyhxbXAtPnBjcywgY2ZnLT5yZWdzW1FQSFlfU1RBUlRf
Q1RSTF0sIFNFUkRFU19TVEFSVCk7Cj4gLQo+ICAJLyogUHV0IFBIWSBpbnRvIFBPV0VSIERPV04g
c3RhdGU6IGFjdGl2ZSBsb3cgKi8KPiAgCXFwaHlfY2xyYml0cyhxbXAtPnBjcywgY2ZnLT5yZWdz
W1FQSFlfUENTX1BPV0VSX0RPV05fQ09OVFJPTF0sCj4gIAkJCVNXX1BXUkROKTsKPiAtLSAKPiAy
LjQ4LjEKPiAKCi0tIArgrq7grqPgrr/grrXgrqPgr43grqPgrqngr40g4K6a4K6k4K6+4K6a4K6/
4K614K6u4K+NCgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5m
cmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9s
aW51eC1waHkK
