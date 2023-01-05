Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C0FA9C4708E
	for <linux-phy@archiver.kernel.org>; Thu,  5 Jan 2023 20:05:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2PR2MO/2azJ+XqiZ3FcUO6vDXhqTX9di01gP97YCDkY=; b=WvfX5b/nJlbsrG
	xBGY31iD2DakYMaNcSN6xrVrO4xJ924Y+PzSRomCVx572XEpW2+2gPCKO/1vTukZuZaUuIL1mONu4
	IxivlDYNaeLIzmDdYUH0mF+r1fin3Z5l8glj6+M1xxmfnGW0tgMqTxx6wQ1kgNVun5mbCh0mj/IQU
	/Q14UHCtY3G5Phil5BHAq9hs4jQP4JnnUZRnsYrmAUVKBNv6/WXJ0W3rwL5Z57ZQI1Qt3+Jo2TQQy
	xZlS8oNkNb2iowuvubQK7XcyV/i+z9/9UKECdNC/pSJq1RrAxaxkeO5Qb7wjPiCzXPPE6Jc/pYgfX
	fMLs3w9n2uNUd1tKLAYg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pDWUg-00EMuJ-Ve; Thu, 05 Jan 2023 20:05:42 +0000
Received: from mail-pf1-x431.google.com ([2607:f8b0:4864:20::431])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pDN3Q-00A8i4-5m
	for linux-phy@lists.infradead.org; Thu, 05 Jan 2023 10:00:57 +0000
Received: by mail-pf1-x431.google.com with SMTP id a184so14166637pfa.9
        for <linux-phy@lists.infradead.org>; Thu, 05 Jan 2023 02:00:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=S5vBFARuIRiK64V5wwqFkQ5kzYGu77jWfbY7LeM0ol8=;
        b=gaUFFXLBJ8PxpmBmW3TEwh1Bh7dvc7x8b51VrFeqk/UV1oRAv7DGYCii+Tp1w2gdb+
         moNaPe8ZyZfVPqr7joC6v/1kXLO2chLGNwGG09hcl8F934DBj2+0p5dxma32DpPJgSyV
         zLkTt9/SFjk+1aeTbq49pfAEdGpcpJqtqClgwD4NvQ4jFLsYiaZJrC2pj7pkFKUR+YOv
         u5zYlsaxIj1tgiUKpyRkzQZQkNdURyjqziPtbH1aZPRr9jyEHSXkB3pwCC1OpMQuNsJ8
         JWKZ2zsxIP2frDFCQ7iETLcUCuYFiTYEqi2rNk+C1leadvkM7j5dpar2s3ivKLuif4Px
         sd/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=S5vBFARuIRiK64V5wwqFkQ5kzYGu77jWfbY7LeM0ol8=;
        b=wJ73ZRivRRZhU9rM4jBcaYtTy0ACo4lR0OEq8njzyR1kAtMFhelMR/JBmZwa5h+j2n
         F8jfvhQtFOXPJsggONF1KSBO498obMmrnuqXeEfryeIwya764KFptALoVXDxLO/9KbYW
         jSA0G4mmxREAXG6m3sedR2Q3ghU+jOPUv5PTmak2KO/X81sVLo9uPoD6fUTKLw0rbRIV
         DZtTPLF0f1ulDTYLQBbXYxVD5u2qhmfsuUERTPNA/iqzGnn5xblRKq5y7oskUqAV71kR
         jeClRmpe+eMh8e/b9CbSb88c7znNm6KWh5Eg7UBlwEjb3H/IVefkoUim6K+E0rqpqjSW
         aeoA==
X-Gm-Message-State: AFqh2koYTjfda3lLT4kjtZyUbTY4i9v/t7s6QAQVwdbrN0QO1tcBivW8
	EbEXtvGxnKs3izStzytEkJqx
X-Google-Smtp-Source: AMrXdXuy76CFoqhJHzUdLoYbZsqoqgin0M+AYQcrcUafsVBfHmWvkfzOtigXyuToV0Hxsvl02rix2g==
X-Received: by 2002:a62:5801:0:b0:574:a541:574a with SMTP id m1-20020a625801000000b00574a541574amr48434720pfb.0.1672912851913;
        Thu, 05 Jan 2023 02:00:51 -0800 (PST)
Received: from thinkpad ([27.111.75.153])
        by smtp.gmail.com with ESMTPSA id a14-20020a62d40e000000b00581fddb7495sm11582395pfh.58.2023.01.05.02.00.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 05 Jan 2023 02:00:50 -0800 (PST)
Date: Thu, 5 Jan 2023 15:30:44 +0530
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: "Martin K. Petersen" <martin.petersen@oracle.com>
Cc: jejb@linux.ibm.com, andersson@kernel.org, vkoul@kernel.org,
	quic_cang@quicinc.com, quic_asutoshd@quicinc.com,
	linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-phy@lists.infradead.org, linux-scsi@vger.kernel.org,
	dmitry.baryshkov@linaro.org, ahalaney@redhat.com,
	abel.vesa@linaro.org, alim.akhtar@samsung.com, avri.altman@wdc.com,
	bvanassche@acm.org
Subject: Re: [PATCH v5 00/23] ufs: qcom: Add HS-G4 support
Message-ID: <20230105100044.GA4463@thinkpad>
References: <20221222141001.54849-1-manivannan.sadhasivam@linaro.org>
 <yq17cy84gqc.fsf@ca-mkp.ca.oracle.com>
 <20230102084707.GA16638@thinkpad>
 <yq1r0w91zbw.fsf@ca-mkp.ca.oracle.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <yq1r0w91zbw.fsf@ca-mkp.ca.oracle.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230105_020056_282406_87EE6F8C 
X-CRM114-Status: GOOD (  11.57  )
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

T24gV2VkLCBKYW4gMDQsIDIwMjMgYXQgMDk6Mzc6NTZQTSAtMDUwMCwgTWFydGluIEsuIFBldGVy
c2VuIHdyb3RlOgo+IAo+IE1hbml2YW5uYW4sCj4gCj4gPj4gPiAgIHNjc2k6IHVmczogY29yZTog
QWRkIHJlaW5pdF9ub3RpZnkoKSBjYWxsYmFjawo+ID4+ID4gICBzY3NpOiB1ZnM6IGNvcmU6IEFk
ZCBzdXBwb3J0IGZvciByZWluaXRpYWxpemluZyB0aGUgVUZTIGRldmljZQo+ID4+IAo+ID4+IEkg
d291bGQgbGlrZSB0byBzZWUgc29tZSByZXZpZXdzIG9mIHRoZSBwcm9wb3NlZCBjb3JlIGNoYW5n
ZXMuCj4gPj4gCj4gPgo+ID4gQm90aCBwYXRjaGVzIGFyZSByZXZpZXdlZCBieSBCYXJ0IG5vdy4K
PiAKPiBTZXJpZXMgYXBwbGllZCB0byA2LjMvc2NzaS1zdGFnaW5nLCB0aGFua3MhCj4gCgpUaGFu
a3MgTWFydGluISBJIHByZXN1bWUgdGhhdCB5b3UgaGF2ZSBhcHBsaWVkIG9ubHkgdGhlIHVmcyBw
YXRjaGVzIGFzCm1lbnRpb25lZCBpbiB0aGUgY292ZXIgbGV0dGVyLiBQSFkgcGF0Y2hlcyBhcmUg
ZXhwZWN0ZWQgdG8gZ28gdGhyb3VnaCBQSFkgdHJlZS4KCkkgY2Fubm90IHNlZSB0aGUgcGF0Y2hl
cyBpbiA2LjMvc2NzaS1zdGFnaW5nIGJyYW5jaCB5ZXQsIHNvIGNvdWxkbid0IGNvbmZpcm0uCgpU
aGFua3MsCk1hbmkKCj4gLS0gCj4gTWFydGluIEsuIFBldGVyc2VuCU9yYWNsZSBMaW51eCBFbmdp
bmVlcmluZwoKLS0gCuCuruCuo+Cuv+CuteCuo+CvjeCuo+CuqeCvjSDgrprgrqTgrr7grprgrr/g
rrXgrq7gr40KCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZy
YWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xp
bnV4LXBoeQo=
