Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3F356C2D0CD
	for <linux-phy@archiver.kernel.org>; Wed, 21 May 2025 14:09:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8Jiid1ETj+l7R3IdzqGMac0cl41oTsJPqTEXYFO7zog=; b=3w2jTPJVKj4v7V
	SihvgUthKXCWSRd3DT1fbX924Wxm/QxUHdeEn9gEqVqBpCK+KBCVRHWVtThZKjuSTWeMY6JOkuOja
	hr9EAKhka9KmgX2ecBj0A6hASGrzXJktzeHYmm9hWQ888WeM+h2qkkg/Z4EvyX4MdekcvvDcm4Wd5
	QjCbSLVhXbG1lnCOf1GBnt3chLwR95hx68JbjTKN/wExasy0dv897bdy+cZyNv+MYS8GM6o3PF33A
	RtVOZ3P5cP3f490V0LivKwvd9TOzBjwcYvHik0gWIb3Wk9hnkbhgrbAFHkSdzWyNklIVeOmhYeTS/
	hl4aDOoKjki4w6rhmDow==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uHk8W-0000000G3Qa-4BUO;
	Wed, 21 May 2025 14:09:37 +0000
Received: from mail-pj1-x102f.google.com ([2607:f8b0:4864:20::102f])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uHjXB-0000000FwW4-1UXR
	for linux-phy@lists.infradead.org;
	Wed, 21 May 2025 13:31:02 +0000
Received: by mail-pj1-x102f.google.com with SMTP id 98e67ed59e1d1-30572effb26so6288391a91.0
        for <linux-phy@lists.infradead.org>; Wed, 21 May 2025 06:31:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1747834260; x=1748439060; darn=lists.infradead.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=z1dbDjgMLEJrOwumrDgSLpVT4yaU17ZjFGTyjnMHOQ4=;
        b=t0r23pcevqfxW7Fqxyqgee42mjNfsOog3p/Magllh2Dp6Kcc/aNRnQAKQxKh/9gGti
         PcNZLfVBcTqZZ+Sn1260Yuv1sJyBjXpnnKDdkoAjmna+8djmU0h3DAwGm5hI7gtPW7+f
         NWmz4f+XSwoOfKSIhZKMOzKMh1VI9d966h/Okp09PSfIF1wttGFakaEmWIdMQIMmTByV
         eDYXRc5RB/J8+mbIfu5Im9edtqktzhAE/8cNOTpOm69xqZ6GxJULMjqknUEV4/vi9tMC
         cVIzh61IlcfTbQ2cAiy74jpVfbnxPcFwKvuHLoK+vRclVQWX8sju7T/o58acUDQ9dOoG
         Jfzw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747834260; x=1748439060;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=z1dbDjgMLEJrOwumrDgSLpVT4yaU17ZjFGTyjnMHOQ4=;
        b=rPtxkVz/8ry23vfQ8RQz7OAYNiPGQi9f5axESfbqfJuJZnfW7Lna5zobF0WTyKjCL+
         Oz7qKpsX0fYSN7fxr8PoFydMBpkwASPIavFyO1aJYiN2QiCFozWDQyhtefxL5TR0Racr
         XFjhOFXiCz87XDx6iwlxlidk1KVuPSJK2wgtmAMiN8ER9txLSTwEyaQirtuudLs/WzhZ
         uOhY8hE7DqtRtZGuKglstM0cROS6VGrqX9bVqM/3p8t55Z9Egg2Uj1ys8Fj0vR1C6920
         sk3myLvG2CRE2hGuaw9tBMDCmP4EV6YVL/veccm1VxPIKWr813G8Hrg37yk1P9zxRraO
         d2Pw==
X-Forwarded-Encrypted: i=1; AJvYcCUW2bBDOMm7UN3UHyuNoIHwircdb3hqx/9Xh6xOKHJ7aQFAv1AkLrVcYI8efqd0qlLSWPUPLpO4uA0=@lists.infradead.org
X-Gm-Message-State: AOJu0YxZLig+9jlrE1vlffMLUtFn45wILg5iXeVTE5xGDjK9bcZX+TTG
	WdVtz/HCEz7fTr+JaDhWW1aWB+AXwlcPBhABei32KKgrofUgzKbvNv+EbDWzv+xmZw==
X-Gm-Gg: ASbGncvsVGCSS2/C9nWfHLCO/N3ms+ZmDhkwpaaHW4PDKRnYo2OKx7ZmhawJB765l1K
	/QWo3uGXaxkD1Fk2ncxJSghZrCCA1wUqgGdAPIGGj3VH/aXdgyQUXExT1ueRx2PrW33Oybzbf26
	6pkLSahlhmYTyTMhSD2KaI69TOWgcg5XrC+JrhrWcRVtAQeZfutOFz3R+ZcXmahQGIfs2jX3kpK
	Q7K/ne0nlD4h5x79LA3uXl96no/WVjLhoRGGofKUTXCXTlsrhEMh6ceE3dN9E/TUZHq8uSSU05y
	joftOJa+EA9N1JhjSnmvyIq63OrtKNFvPlqdyTqm2+mnqUtfqbIgzljFffCux06WweyZvn4=
X-Google-Smtp-Source: AGHT+IGPKkuMknbqbSMLVX+JBJd/UAyJcjpyOY/yvUsxjBau5eWt4Mkj+OEXtvgnfC9urBGO+cN+Qg==
X-Received: by 2002:a17:90b:2f0d:b0:2fe:68a5:d84b with SMTP id 98e67ed59e1d1-30e7d4e7e1bmr29895277a91.1.1747834260260;
        Wed, 21 May 2025 06:31:00 -0700 (PDT)
Received: from thinkpad ([120.60.52.42])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-30f364907dfsm3632884a91.23.2025.05.21.06.30.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 21 May 2025 06:30:59 -0700 (PDT)
Date: Wed, 21 May 2025 14:30:53 +0100
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: Nitin Rawat <quic_nitirawa@quicinc.com>
Cc: vkoul@kernel.org, kishon@kernel.org, 
	James.Bottomley@hansenpartnership.com, martin.petersen@oracle.com, bvanassche@acm.org, 
	andersson@kernel.org, neil.armstrong@linaro.org, dmitry.baryshkov@oss.qualcomm.com, 
	konrad.dybcio@oss.qualcomm.com, quic_rdwivedi@quicinc.com, quic_cang@quicinc.com, 
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org, 
	linux-scsi@vger.kernel.org
Subject: Re: [PATCH V5 05/11] phy: qcom-qmp-ufs: Remove qmp_ufs_com_init()
Message-ID: <z3yfou4oolymsgb72dpakwcsmq6v3gnx64mdals7krnxdhpc2a@lsepak4kc2mg>
References: <20250515162722.6933-1-quic_nitirawa@quicinc.com>
 <20250515162722.6933-6-quic_nitirawa@quicinc.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250515162722.6933-6-quic_nitirawa@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250521_063101_405951_808B4DA3 
X-CRM114-Status: GOOD (  18.12  )
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

T24gVGh1LCBNYXkgMTUsIDIwMjUgYXQgMDk6NTc6MTZQTSArMDUzMCwgTml0aW4gUmF3YXQgd3Jv
dGU6Cj4gVGhlIHFtcF91ZnNfcG93ZXJfb24oKSBmdW5jdGlvbiBhY3RzIGFzIGEgd3JhcHBlciwg
c29sZWx5IGludm9raW5nCj4gcW1wX3Vmc19jb21faW5pdCgpLiBBZGRpdGlvbmFsbHksIHRoZSBj
b2RlIHdpdGhpbiBxbXBfdWZzX2NvbV9pbml0KCkKPiBkb2VzIG5vdCBjb3JyZXNwb25kIHdlbGwg
d2l0aCBpdHMgbmFtZS4KPiAKPiBUaGVyZWZvcmUsIHRvIGVuaGFuY2UgdGhlIHJlYWRhYmlsaXR5
IGFuZCBlbGltaW5hdGUgdW5uZWNlc3NhcnkKPiBmdW5jdGlvbiBjYWxsIGlubGluZSBxbXBfdWZz
X2NvbV9pbml0KCkgaW50byBxbXBfdWZzX3Bvd2VyX29uKCkuCj4gCj4gVGhlcmUgaXMgbm8gY2hh
bmdlIHRvIHRoZSBmdW5jdGlvbmFsaXR5Lgo+IAo+IFJldmlld2VkLWJ5OiBEbWl0cnkgQmFyeXNo
a292IDxkbWl0cnkuYmFyeXNoa292QG9zcy5xdWFsY29tbS5jb20+Cj4gU2lnbmVkLW9mZi1ieTog
Tml0aW4gUmF3YXQgPHF1aWNfbml0aXJhd2FAcXVpY2luYy5jb20+Cj4gLS0tCj4gIGRyaXZlcnMv
cGh5L3F1YWxjb21tL3BoeS1xY29tLXFtcC11ZnMuYyB8IDQzICsrKysrKysrKystLS0tLS0tLS0t
LS0tLS0KPiAgMSBmaWxlIGNoYW5nZWQsIDE3IGluc2VydGlvbnMoKyksIDI2IGRlbGV0aW9ucygt
KQo+IAo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL3BoeS9xdWFsY29tbS9waHktcWNvbS1xbXAtdWZz
LmMgYi9kcml2ZXJzL3BoeS9xdWFsY29tbS9waHktcWNvbS1xbXAtdWZzLmMKPiBpbmRleCAzM2Qy
MzhjZjQ5YWEuLmQzZjllZTQ5MGEzMiAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL3BoeS9xdWFsY29t
bS9waHktcWNvbS1xbXAtdWZzLmMKPiArKysgYi9kcml2ZXJzL3BoeS9xdWFsY29tbS9waHktcWNv
bS1xbXAtdWZzLmMKPiBAQCAtMTc1OCwxMiArMTc1OCwyOCBAQCBzdGF0aWMgdm9pZCBxbXBfdWZz
X2luaXRfcmVnaXN0ZXJzKHN0cnVjdCBxbXBfdWZzICpxbXAsIGNvbnN0IHN0cnVjdCBxbXBfcGh5
X2NmZwo+ICAJCXFtcF91ZnNfaW5pdF9hbGwocW1wLCAmY2ZnLT50YmxzX2hzX2IpOwo+ICB9Cj4g
IAo+IC1zdGF0aWMgaW50IHFtcF91ZnNfY29tX2luaXQoc3RydWN0IHFtcF91ZnMgKnFtcCkKPiAr
c3RhdGljIGludCBxbXBfdWZzX2NvbV9leGl0KHN0cnVjdCBxbXBfdWZzICpxbXApCgpTaW5jZSB0
aGVyZSBpcyBubyBxbXBfdWZzX2NvbV9pbml0KCkgbm93LCBxbXBfdWZzX2NvbV9leGl0KCkgbGFj
a3Mgc3ltbWV0cnkuCk1heWJlIHlvdSBzaG91bGQgcmVuYW1lIGl0IHRvby4KCj4gIHsKPiAgCWNv
bnN0IHN0cnVjdCBxbXBfcGh5X2NmZyAqY2ZnID0gcW1wLT5jZmc7Cj4gKwo+ICsJcmVzZXRfY29u
dHJvbF9hc3NlcnQocW1wLT51ZnNfcmVzZXQpOwo+ICsKPiArCWNsa19idWxrX2Rpc2FibGVfdW5w
cmVwYXJlKHFtcC0+bnVtX2Nsa3MsIHFtcC0+Y2xrcyk7Cj4gKwo+ICsJcmVndWxhdG9yX2J1bGtf
ZGlzYWJsZShjZmctPm51bV92cmVncywgcW1wLT52cmVncyk7Cj4gKwo+ICsJcmV0dXJuIDA7Cj4g
K30KPiArCj4gK3N0YXRpYyBpbnQgcW1wX3Vmc19wb3dlcl9vbihzdHJ1Y3QgcGh5ICpwaHkpCj4g
K3sKPiArCXN0cnVjdCBxbXBfdWZzICpxbXAgPSBwaHlfZ2V0X2RydmRhdGEocGh5KTsKPiArCWNv
bnN0IHN0cnVjdCBxbXBfcGh5X2NmZyAqY2ZnID0gcW1wLT5jZmc7Cj4gIAl2b2lkIF9faW9tZW0g
KnBjcyA9IHFtcC0+cGNzOwo+ICAJaW50IHJldDsKPiAgCj4gKwlkZXZfdmRiZyhxbXAtPmRldiwg
IkluaXRpYWxpemluZyBRTVAgcGh5XG4iKTsKCk5vdywgdGhpcyBkZWJ1ZyBwcmludCBkb2Vzbid0
IG1ha2Ugc2Vuc2UuIFlvdSBjYW4gZHJvcCBpdC4KCi0gTWFuaQoKLS0gCuCuruCuo+Cuv+CuteCu
o+CvjeCuo+CuqeCvjSDgrprgrqTgrr7grprgrr/grrXgrq7gr40KCi0tIApsaW51eC1waHkgbWFp
bGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5m
cmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
