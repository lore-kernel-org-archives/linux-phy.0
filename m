Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 654EAC4167B
	for <linux-phy@archiver.kernel.org>; Mon,  2 Jan 2023 08:47:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eJsQg5VKOg7xoLCMXRMdT5eZf8w9yV5WqgmSp0eYvRM=; b=RiBn4fuuv2IHca
	sV2G92DPMd9zpxc810dlw3PcoB4Pqe6sfSttfRJ/kDdewIRr6P9yNCA/MeKgK6Ma6UY8lNK3w0kzO
	kt2Sr9rA0Ybj2ytnGqRYcQhdYkQEMzuXFtcQsUJKjxo88EvBKxPrTy4/d1xXdTIRgu8NC8O+zsJe/
	Czic6Qhp1vd2kmGi536n/AX8v+KYhldNlRoyu6VC6yOupMb+c2J5YagdOBxY/iRkGxt0rIZCWOs9A
	z09h4Oy+OYamEWEsqUrBDIMVC08F0N6zDrJiggZACFnc4f18zzO48U6HKM41aVPAqQ9qnkfbDNH9h
	sEE2QIh+yhXfiMZpBDNg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pCGTu-009YYg-4w; Mon, 02 Jan 2023 08:47:42 +0000
Received: from mail-pl1-x631.google.com ([2607:f8b0:4864:20::631])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pCGTU-009YEy-1w
	for linux-phy@lists.infradead.org; Mon, 02 Jan 2023 08:47:18 +0000
Received: by mail-pl1-x631.google.com with SMTP id d9so12239677pll.9
        for <linux-phy@lists.infradead.org>; Mon, 02 Jan 2023 00:47:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=tkq2fYPAAfCT6CmgtdbmFTqHCyc6irGoNXfZDkU6fuw=;
        b=p93mZ34atd0r0rIEpm6svkrRZ9FPVeK8Dv9EYEQJHXFoyIEM7K6vf2gGV60goJnIc9
         HevkH6rQ2a+EMePniVp0o2vvM0xSld1KA+S6zcwr1Nzqijv0jpTc9u2vNON/jc0RM2TX
         IgRGoM+k6l4pwYnEABIPni9VfHqCtZFhetDOjA8nbxvJ306OXVIKSSj5UrlgtJhcJK3v
         U7Y1JyH0OO2PGyVm8ZyD9fLPcDxj7G19HzjE469P537WGdBJjYFke8rz+zg9U9hHu/+D
         CEcIS6MDBoo0znvZwNvz6lotdJRJPIqcws6AcGj29i8n8MCQfTafeaku7BXtHTy6LmNP
         oSbw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=tkq2fYPAAfCT6CmgtdbmFTqHCyc6irGoNXfZDkU6fuw=;
        b=5mlKCvow7l+XjyL3nDsQfm4oXmHuiqaL7utiRYZnkfdYqpwZPE9sOVcth4dabEJYU5
         T/jhyhohpsSckf74g6INUwf+6ho5bpvDBTEywSEdYV3i38BYFsLJT4QMB4SGjzN/z3DC
         jSzB/9jEYCWzHt/FmYbZC5YwE6NcrY1cJwfc9Xdp5ZTBVgwzov07rdVhnYIgAPltlysc
         GPceLsoojvpe4wUb6tEqMqAIU9fpTcq5TfpHREvAGhOsEwvU32RRqQB0z7bnClUXbRIh
         Z2rlbKaYAy0fEyoa6XNIcQaTZQAvKnVPtR3Y/H0zD17dJ5eYax9RMWW9y0yis9yFsZx8
         qAFA==
X-Gm-Message-State: AFqh2krEIFtd0+pns3Yhiw0JZcaI8DdLBaq2MQGuPYRLtPac0oz//cWZ
	wOgmX1zbpahg64gfzW8oW93O
X-Google-Smtp-Source: AMrXdXs4EMX0rX34O8k6lqYjXiFN2NlmyBxs4ZAhDFblSqzK9GJaN+YN/7NTn4wtD7Cl5I+616O4mw==
X-Received: by 2002:a17:90a:b10b:b0:225:cc25:802f with SMTP id z11-20020a17090ab10b00b00225cc25802fmr33334186pjq.28.1672649233597;
        Mon, 02 Jan 2023 00:47:13 -0800 (PST)
Received: from thinkpad ([220.158.158.187])
        by smtp.gmail.com with ESMTPSA id q7-20020a17090a430700b0020bfd6586c6sm16618209pjg.7.2023.01.02.00.47.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 02 Jan 2023 00:47:12 -0800 (PST)
Date: Mon, 2 Jan 2023 14:17:07 +0530
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
Message-ID: <20230102084707.GA16638@thinkpad>
References: <20221222141001.54849-1-manivannan.sadhasivam@linaro.org>
 <yq17cy84gqc.fsf@ca-mkp.ca.oracle.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <yq17cy84gqc.fsf@ca-mkp.ca.oracle.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230102_004716_696326_5C15FE6B 
X-CRM114-Status: GOOD (  10.04  )
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

SGkgTWFydGluLAoKT24gRnJpLCBEZWMgMzAsIDIwMjIgYXQgMDY6Mjk6MjRQTSAtMDUwMCwgTWFy
dGluIEsuIFBldGVyc2VuIHdyb3RlOgo+IAo+IE1hbml2YW5uYW4sCj4gCj4gPiAgIHNjc2k6IHVm
czogY29yZTogQWRkIHJlaW5pdF9ub3RpZnkoKSBjYWxsYmFjawo+ID4gICBzY3NpOiB1ZnM6IGNv
cmU6IEFkZCBzdXBwb3J0IGZvciByZWluaXRpYWxpemluZyB0aGUgVUZTIGRldmljZQo+IAo+IEkg
d291bGQgbGlrZSB0byBzZWUgc29tZSByZXZpZXdzIG9mIHRoZSBwcm9wb3NlZCBjb3JlIGNoYW5n
ZXMuCj4gCgpCb3RoIHBhdGNoZXMgYXJlIHJldmlld2VkIGJ5IEJhcnQgbm93LgoKVGhhbmtzLApN
YW5pCgo+IC0tIAo+IE1hcnRpbiBLLiBQZXRlcnNlbglPcmFjbGUgTGludXggRW5naW5lZXJpbmcK
Ci0tIArgrq7grqPgrr/grrXgrqPgr43grqPgrqngr40g4K6a4K6k4K6+4K6a4K6/4K614K6u4K+N
CgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9y
ZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
