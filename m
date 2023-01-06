Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7244BC3DA7A
	for <linux-phy@archiver.kernel.org>; Fri,  6 Jan 2023 08:46:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=o9IOLV7pvGziFf86N2h88FgaFbYsg8DP8ihdu3RjPKk=; b=zgGHEHfhfvlgi4
	Br/OqTOGA3YBDHjl6Tl22NWykqCaAcZQGm7Rnl1ps1rE9UypSeLQVE54IhltyPz774iwO/amP0Hw6
	Ibb+WEG9Tm7S3CZy5BoCER9QHpOLCD5hb5AE0+3TUaGNkufNHNCsJpfKXDogQVQLYld83W2IRq4Bw
	pL5RJKYnPi9iOe5vV92v9Iz1HsnidC0N4bgf1mFq+gADcTOzt1rwepB7WM2eSDGywaMuMhiK6ktRT
	CG/hac8wn0pTLUHKUQOTHWLXYA/3ewCNlYVa+r3KM9Cle8gTd/IYyBSSkRSPwZYZq8NyhDD1KpiK+
	5zliA/ukPyjnayOoqfXA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pDiMr-006kfd-Qv; Fri, 06 Jan 2023 08:46:25 +0000
Received: from mail-pj1-x1033.google.com ([2607:f8b0:4864:20::1033])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pDiMo-006kdD-Vi
	for linux-phy@lists.infradead.org; Fri, 06 Jan 2023 08:46:24 +0000
Received: by mail-pj1-x1033.google.com with SMTP id h7-20020a17090aa88700b00225f3e4c992so4606387pjq.1
        for <linux-phy@lists.infradead.org>; Fri, 06 Jan 2023 00:46:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=7704TWGlOT9biW+iIZT64FatF6rRcnjwYUtQOdttF18=;
        b=Qzh6CyLZawj7lAuPdlzvPNtNUN5w5z5tt4rTHip/orgibj8P2fgzdrOvM+qknJF/f3
         1dpfPJj8KGJYSUup4DRVge6N3bG/E6bsrp6Jm2FxD0ATcpgFSXXFR4ta6dlm9RZhj8UV
         G6M26mTdsDNlJYfxPZ7pMMTk3E0BWIOMVD0V1n9R70Gl5pGbXqABi8eJDsNoggJAr8wt
         9iLuNqNeOeY4B68y24cYNLVGc1xBYoSrtH5j7n+juegwoRu2CeAgul6nHUNj9cDoE+Ka
         RmBc7EFIgoxjwxF2F+o7ArJ2pyMW1z3swKkwHlA/0Ee8NX1gBFGEjlR1KLzqjm1+0aMs
         HWQA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=7704TWGlOT9biW+iIZT64FatF6rRcnjwYUtQOdttF18=;
        b=2R0WCxqjGuPNl7FBPleCUzWoTQ8hL2Vgq2RqYyx+lqicKiz5eg5q+UrIrM+Gdu0H7X
         74/5Ib9v4uR8xbY4kyBEqI5JW9kOjKw8QmdnnUPbclcu5KBO2QtLcydACrbyGZyiQcJR
         aVwLvwbAP7r31ZB+wc8UVSTiMQuSFcJBTXRxTdighUz956ARYlFLQwjgAbGziSln1G1o
         c8g5BrLMKOQx8dYPEsURx0yrUtg+iil4H25n4kDpcXI8BNmMVXOqihvk8yqGtau38SRe
         D9jzRM0rOu+PXql9Wxdf+XPK5Uh8DjOwV0n6t5GE+I5bYLJS2MrSJ/3Z9tMniQrWq1d1
         fIgA==
X-Gm-Message-State: AFqh2kri4STaKzSUHlbUXItRvzwIvlklmrQxneGSczJrn23c+Ami+RjW
	89FK1zS4Vfa1qL5KXygg9PAD
X-Google-Smtp-Source: AMrXdXtW0CUE+lF0WbXsjMGFILtHeiuFcbzJuPhkma60sHYDBtu5vEHeOWpg/hkqjQQD8ZKvp+PrpQ==
X-Received: by 2002:a05:6a21:33a9:b0:af:8ff3:fc78 with SMTP id yy41-20020a056a2133a900b000af8ff3fc78mr76825245pzb.19.1672994780814;
        Fri, 06 Jan 2023 00:46:20 -0800 (PST)
Received: from thinkpad ([117.217.183.19])
        by smtp.gmail.com with ESMTPSA id h69-20020a638348000000b00473c36ea150sm483422pge.92.2023.01.06.00.46.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 06 Jan 2023 00:46:19 -0800 (PST)
Date: Fri, 6 Jan 2023 14:16:08 +0530
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
Message-ID: <20230106084608.GA5542@thinkpad>
References: <20221222141001.54849-1-manivannan.sadhasivam@linaro.org>
 <yq17cy84gqc.fsf@ca-mkp.ca.oracle.com>
 <20230102084707.GA16638@thinkpad>
 <yq1r0w91zbw.fsf@ca-mkp.ca.oracle.com>
 <20230105100044.GA4463@thinkpad>
 <yq1y1qgz7wu.fsf@ca-mkp.ca.oracle.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <yq1y1qgz7wu.fsf@ca-mkp.ca.oracle.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230106_004623_045844_3CF970AC 
X-CRM114-Status: GOOD (  10.88  )
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

T24gVGh1LCBKYW4gMDUsIDIwMjMgYXQgMTA6MDI6NTZQTSAtMDUwMCwgTWFydGluIEsuIFBldGVy
c2VuIHdyb3RlOgo+IAo+IE1hbml2YW5uYW4sCj4gCj4gPiBUaGFua3MgTWFydGluISBJIHByZXN1
bWUgdGhhdCB5b3UgaGF2ZSBhcHBsaWVkIG9ubHkgdGhlIHVmcyBwYXRjaGVzIGFzCj4gPiBtZW50
aW9uZWQgaW4gdGhlIGNvdmVyIGxldHRlci4gUEhZIHBhdGNoZXMgYXJlIGV4cGVjdGVkIHRvIGdv
IHRocm91Z2gKPiA+IFBIWSB0cmVlLgo+IAo+IENvcnJlY3QsIEkgb25seSB0b29rIHRoZSBTQ1NJ
IHBhdGNoZXMuCj4gCj4gPiBJIGNhbm5vdCBzZWUgdGhlIHBhdGNoZXMgaW4gNi4zL3Njc2ktc3Rh
Z2luZyBicmFuY2ggeWV0LCBzbyBjb3VsZG4ndAo+ID4gY29uZmlybS4KPiAKPiBJIGRpZCBub3Qg
cHVzaCBteSB0cmVlIHRvIGtlcm5lbC5vcmcgYXMgSSBkaXNjb3ZlcmVkIHRoYXQgb25lIG9mIHRo
ZQo+IG1lcmdlcyBoYWQgcHVsbGVkIGluIGEgYnVuY2ggb2YgdW5yZWxhdGVkIGNvbW1pdHMgaW50
byBzdGFnaW5nLiBXaWxsCj4gcmVzb2x2ZSB0aGlzIHRvbW9ycm93Lgo+IAoKT2theS4gVGhhbmtz
IGZvciBjb25maXJtaW5nIQoKLU1hbmkKCj4gLS0gCj4gTWFydGluIEsuIFBldGVyc2VuCU9yYWNs
ZSBMaW51eCBFbmdpbmVlcmluZwoKLS0gCuCuruCuo+Cuv+CuteCuo+CvjeCuo+CuqeCvjSDgrprg
rqTgrr7grprgrr/grrXgrq7gr40KCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBo
eUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2xpbnV4LXBoeQo=
