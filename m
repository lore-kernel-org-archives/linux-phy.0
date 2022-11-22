Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0908CC4332F
	for <linux-phy@archiver.kernel.org>; Tue, 22 Nov 2022 16:23:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=H1WRahTtCBgCmYglrIpQ/7AF+l5IPOJaBz/mOvIWMEI=; b=xcnuTjaEdnB7JB
	1GUBRm6iDsUlWm2Y3Bruox6mofIRGIbexYDont6kWnb/r40npc1u+gvDUcTMRupYjo43CIdNXNqCp
	OpXnV8WmK6RQ+dLveNvDS0jlcnj+Vz+PpOJ+lBvoS93cpoZ7+TjOqUin6cChl6zT36+YEjrBHED8y
	LpakAWjRPxWX0T7M5Eh4/YIC09umfnCXhJHmxi7MNYPK+qmv5JT5ueUQpqgzNL9bfm9gawJ0imwN6
	1ls6IyO6Hz4PwNAUDRq5XB12sWeGGR6dUDa1c5LrOUd8Lc+Xq+d1Uojyyx1I5Agg6r9aMh/UoGsCf
	x039RsTyUvOWLAv/nY2g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oxW3F-00Agw0-Eo; Tue, 22 Nov 2022 16:23:13 +0000
Received: from mail-pl1-x62c.google.com ([2607:f8b0:4864:20::62c])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oxW3C-00AguA-Gd
	for linux-phy@lists.infradead.org; Tue, 22 Nov 2022 16:23:11 +0000
Received: by mail-pl1-x62c.google.com with SMTP id io19so14133967plb.8
        for <linux-phy@lists.infradead.org>; Tue, 22 Nov 2022 08:23:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=ue9EDxh2qojVXmFN9RvpYTz/rVI4G/WOf5jkgr5avh0=;
        b=LDOUMeLUyFATDS/+DT4WyniglISnUgAwwcB3WL4mvHq14NwZpdrA+n/1ffLEnYoY+Y
         9+KkgXw5/sGDO9x63IGVWM23h3xZAy7n+AJR8tF7WCacuD1jZ0IIXawVRFre5ir6fF2w
         ERTdlAm6qmlVDiyThKyhqvE7ghrMRHPkjx6D+WDpckOtiFyZpQjQdsUWmiZ143eJ+HQQ
         k/c+mJPelDrGfF3UW0hTOl/334KdGGjuTaIdpNXFh8CKOpSHtyWvchfvxLwpTSTA8dN6
         3IIJ7BE4ZX9a3fDv1oXttKb67+an4NexOflUS2TyAMDqTYtxz6fBgw+AFRBcHT5296+L
         chNA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=ue9EDxh2qojVXmFN9RvpYTz/rVI4G/WOf5jkgr5avh0=;
        b=P+2RbI6Pegb9v99563QYmCMmrDZNuCHaAZDqttvWhly1FJuF54l7NM/3OvXNFZzfo0
         X0InEBSsRIoaINOZ1EWv5xYZDlloRyqu+p9a2qeqG7WtHoeZx6KMbeKw8/xiZoaf2iIj
         mQNx9PafhvFFOPF7NgECvsN7t2hCc9FqQiYB0AEAjRVJ2cPF0nmgf0V69qRMGypW6rP6
         pobNOhAFqAnI4B7lCSjzKXCp7oo8f6yO5EM2gEigIRqYBNrX6qMLq7iNu9rIuQdPSX7X
         1MY2jWwh25uUwgTX9kvMjsDprAsW7Y8GnBzjniqa7WoTaFZMbfSYUzjwAoOQFJkYPCPb
         IY1g==
X-Gm-Message-State: ANoB5plsQDatnB9BPJ/HCkckD/f3GA7mhHA1D2CUy0Rd+1WmGI3wl06U
	j+7hDM9tVQOwmflYBgMvtrx1
X-Google-Smtp-Source: AA0mqf4XagdHN/lPKo62pTMRpEMHACHdEvJpA6tV10xR66vw+jaqfssWJR5FI1MtF5k11dO9uUcj3Q==
X-Received: by 2002:a17:902:7d89:b0:188:4ba9:79ee with SMTP id a9-20020a1709027d8900b001884ba979eemr4928697plm.83.1669134187482;
        Tue, 22 Nov 2022 08:23:07 -0800 (PST)
Received: from thinkpad ([117.202.191.0])
        by smtp.gmail.com with ESMTPSA id y19-20020a1709027c9300b0017f9db0236asm12224560pll.82.2022.11.22.08.23.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 22 Nov 2022 08:23:06 -0800 (PST)
Date: Tue, 22 Nov 2022 21:52:58 +0530
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: martin.petersen@oracle.com, jejb@linux.ibm.com, andersson@kernel.org,
	vkoul@kernel.org, krzysztof.kozlowski+dt@linaro.org,
	konrad.dybcio@somainline.org, robh+dt@kernel.org,
	quic_cang@quicinc.com, linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-phy@lists.infradead.org, linux-scsi@vger.kernel.org,
	dmitry.baryshkov@linaro.org, ahalaney@redhat.com
Subject: Re: [PATCH v2 06/15] dt-bindings: ufs: Add "max-device-gear"
 property for UFS device
Message-ID: <20221122162258.GG157542@thinkpad>
References: <20221031180217.32512-1-manivannan.sadhasivam@linaro.org>
 <20221031180217.32512-7-manivannan.sadhasivam@linaro.org>
 <1fe8fd96-7770-0bda-c970-aa38d030ff3b@linaro.org>
 <20221103122850.GD8434@thinkpad>
 <a170e4e8-fc9d-9be1-35ba-733f24cb93e8@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <a170e4e8-fc9d-9be1-35ba-733f24cb93e8@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221122_082310_601848_7C0DEC9F 
X-CRM114-Status: GOOD (  28.77  )
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

T24gVGh1LCBOb3YgMDMsIDIwMjIgYXQgMTE6MjM6MTdBTSAtMDQwMCwgS3J6eXN6dG9mIEtvemxv
d3NraSB3cm90ZToKPiBPbiAwMy8xMS8yMDIyIDA4OjI4LCBNYW5pdmFubmFuIFNhZGhhc2l2YW0g
d3JvdGU6Cj4gPiBPbiBXZWQsIE5vdiAwMiwgMjAyMiBhdCAwMzowOTo1MFBNIC0wNDAwLCBLcnp5
c3p0b2YgS296bG93c2tpIHdyb3RlOgo+ID4+IE9uIDMxLzEwLzIwMjIgMTQ6MDIsIE1hbml2YW5u
YW4gU2FkaGFzaXZhbSB3cm90ZToKPiA+Pj4gVGhlIG1heGltdW0gZ2VhciBzdXBwb3J0ZWQgYnkg
dGhlIFVGUyBkZXZpY2UgY2FuIGJlIHNwZWNpZmllZCB1c2luZyB0aGUKPiA+Pj4gIm1heC1kZXZp
Y2UtZ2VhciIgcHJvcGVydHkuIFRoaXMgYWxsb3dzIHRoZSBVRlMgY29udHJvbGxlciB0byBjb25m
aWd1cmUgdGhlCj4gPj4+IFRYL1JYIGdlYXIgYmVmb3JlIHN0YXJ0aW5nIGNvbW11bmljYXRpb24g
d2l0aCB0aGUgVUZTIGRldmljZS4KPiA+Pgo+ID4+IFRoaXMgaXMgY29uZnVzaW5nLiBUaGUgVUZT
IFBIWSBwcm92aWRlcyBnZWFyIGNhcGFiaWxpdHksIHNvIHdoYXQgaXMgdGhlCj4gPj4gImRldmlj
ZSIgaGVyZT8gVGhlIGF0dGFjaGVkIG1lbW9yeT8gSG93IGNvdWxkIGl0IHJlcG9ydCBzb21ldGhp
bmcgZWxzZQo+ID4+IHRoYW4gcGh5Pwo+ID4+Cj4gPiAKPiA+IFRoaXMgaXMgdGhlIG5vcm0gd2l0
aCBhbnkgc3RvcmFnZSBwcm90b2NvbCwgcmlnaHQ/IEJvdGggaG9zdCBhbmQgZGV2aWNlCj4gPiAo
bWVtb3J5KSBjYW4gc3VwcG9ydCBkaWZmZXJlbnQgc3BlZWRzIGFuZCB0aGUgT0VNIGNhbiBjaG9v
c2UgdG8gcHV0IGFueQo+ID4gY29tYmluYXRpb25zIChldmVuIHRob3VnaCBpdCBtaWdodCBub3Qg
YmUgdmVyeSBlZmZpY2llbnQpLgo+ID4gCj4gPiBGb3IgaW5zdGFuY2UsCj4gPiAKPiA+IFBIWSAo
RzQpIC0+IERldmljZSAoRzMpCj4gCj4gWWVzIGFuZCBsb29rIGF0IE1NQyAtIG5vIG5lZWQgdG8g
ZGVmaW5lICJtYXggbW9kZSIgc3VwcG9ydGVkIGJ5IGVNTUMuCj4gWW91IGRlZmluZSB0aGUgbW9k
ZXMgc3VwcG9ydGVkIGJ5IGNvbnRyb2xsZXIgYnV0IHRoZSBtZW1vcnkgY2FwYWJpbGl0aWVzCj4g
YXJlIGJlaW5nIGF1dG9kZXRlY3RlZCBhbmQgbmVnb3RpYXRlZC4KPiAKPiA+IAo+ID4gRnJvbSB0
aGUgaG9zdCBwZXJzcGVjdGl2ZSB3ZSBrbm93IHdoYXQgdGhlIFBIWSBjYW4gc3VwcG9ydCBidXQg
dGhhdCdzIG5vdCB0aGUKPiA+IHNhbWUgd2l0aCB0aGUgZGV2aWNlIHVudGlsIHByb2JpbmcgaXQu
IEFuZCBwcm9iaW5nIHJlcXVpcmVzIHVzaW5nIGEgbWluaW11bQo+ID4gc3VwcG9ydGVkIGdlYXIu
IEZvciBzdXJlIHdlIGNhbiB1c2Ugc29tZXRoaW5nIGxpa2UgRzIvRzMgYW5kIHJlaW5pdCBsYXRl
ciBidXQKPiA+IGFzIEkgbGVhcm50LCB0aGF0IGFwcHJvYWNoIHdhcyByZWplY3RlZCBieSB0aGUg
Y29tbXVuaXR5IHdoZW4gc3VibWl0dGVkCj4gPiBieSBRdWFsY29tbSBlYXJsaWVyLgo+IAo+IEl0
IHNob3VsZCBiZSB0aGVuIHJlZmVyZW5jZWQgc29tZXdoZXJlIGFzIGl0IG1pZ2h0IGJlIGEgcmVh
c29uIHRvIGFjY2VwdAo+IHRoZSBwcm9wZXJ0eS4KPiAKPiA+IAo+ID4+IFRoZSBsYXN0IHNlbnRl
bmNlIGFsc28gc3VnZ2VzdHMgdGhhdCB5b3Ugc3RhdGljYWxseSBlbmNvZGUgZ2VhciB0byBhdm9p
ZAo+ID4+IHJ1bnRpbWUgbmVnb3RpYXRpb24uCj4gPj4KPiA+IAo+ID4gWWVzLCB0aGUgT0VNIHNo
b3VsZCBrbm93IHdoYXQgdGhlIG1heCBnZWFyIHNwZWVkIHRoZXkgd2FudCB0byBydW4sIHNvIGdl
dHRpbmcKPiA+IHRoaXMgaW5mbyBmcm9tIERUIG1ha2VzIHNlbnNlLgo+IAo+IE5vdCByZWFsbHkg
aWYgaXQgaXMgYXV0by1kZXRlY3RhYmxlLiBKdXN0IGJlY2F1c2UgdGhpbmdzIGFyZSBzdGF0aWMg
aXMKPiBub3QgdGhlIHNvbGUgcmVhc29uIHRvIHB1dCB0aGVtIGludG8gRFQuIFRoZSByZWFzb24g
aXMgLSB0aGV5IGFyZSBub3QKPiBkZXRlY3RhYmxlIGJ5IE9TL2Zpcm13YXJlIHRodXMgd2UgbXVz
dCBoYXZlIHRoZW0gaW4gRFQgdG8gYmUgYWJsZSB0bwo+IGtub3cgaXQuCj4gCgpTaW5jZSBJJ20g
bm90IGFibGUgdG8gZ2V0IGEgbGluayB0byB0aGUgcHJldmlvdXMgZGlzY3Vzc2lvbiwgSSdtIGdv
bm5hCmltcGxlbWVudCB0aGUgcmVpbml0IHN1cHBvcnQgYW5kIHBvc3QgdGhlIG5leHQgaXRlcmF0
aW9uLiBMZXQncyBzZWUgaG93IGl0CnR1cm5zIHVwLgoKVGhhbmtzLApNYW5pCgo+IAo+IAo+IEJl
c3QgcmVnYXJkcywKPiBLcnp5c3p0b2YKPiAKCi0tIArgrq7grqPgrr/grrXgrqPgr43grqPgrqng
r40g4K6a4K6k4K6+4K6a4K6/4K614K6u4K+NCgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdAps
aW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcv
bWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
