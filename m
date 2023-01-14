Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E079AC46467
	for <linux-phy@archiver.kernel.org>; Sat, 14 Jan 2023 07:11:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zwJkwX3D2saiEegOwAxlVrE7G2VWrCxKL1p6cH0XLBw=; b=xu2XF0axCuidf3
	y+4xY1r6vtbHEJh4b2qHoEcVTEnDEvQCprOLUbeA+OF9CloIc4rWP7DDg+N+5IaglX6Q5rM07fKuP
	7Rw4jnKlKpL8Gq9Negnl/nshuOZgEXxBYGSAHtTWQH4AhRj8UdrxHdCFVLlTM1z38dAryAGO172ag
	gF8Ml0KGQOdho6N4uydYyu1j9upXPGg0qS0pUXywol47r+11u5GGzZzhu3cWs0L+G4JO/hvGje9mF
	NKjgkYe9lPQnq9/ByszW8aUT2QrRkF56siIZVX7Fc5Qsny67HU/jDDAojXaW6+KVLsiZFK99c8PAn
	BnfD+KdGSXn0T79CLw4g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pGahS-005OK2-Bg; Sat, 14 Jan 2023 07:11:34 +0000
Received: from mail-pl1-x62a.google.com ([2607:f8b0:4864:20::62a])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pGahQ-005OJZ-7e
	for linux-phy@lists.infradead.org; Sat, 14 Jan 2023 07:11:33 +0000
Received: by mail-pl1-x62a.google.com with SMTP id k18so1527570pll.5
        for <linux-phy@lists.infradead.org>; Fri, 13 Jan 2023 23:11:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=1hhoYOhdFd/1XWBMyQAS/0V7h4xRZx/EixJ0JzHFu+g=;
        b=s/rwqXRQRrL287PIModN2dUSPDh/Rdn5QjNd5Xp+Axm/oMwq7OfgSfuDuisdK92Hq5
         MTLo1kefENmoT+Q58au/HYoJ7/OhtfVipv0+5dmgr8+c4+Q7Hvxbxjsj+5nOA0MLeWVN
         DZR+h96VSYYvWFA2l9s8uXTAmA8dvCNTT6eoE8OZ4jbckdImpMl0O4UCDnMxY3h9cCNC
         6rOTpmW/MGaeggiUS23KBUei63wgqnewzos/1PZYDzseOX5DojemX+yAlGmZW6kx2Hok
         3qYLB75spkgntclw0xXCtIluVmHzwlWYz9Gx4TPqTBOz1t/vZa0Xd/p/WDU0cOXB9M7d
         THVA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=1hhoYOhdFd/1XWBMyQAS/0V7h4xRZx/EixJ0JzHFu+g=;
        b=CsSt3+LaQGCXrHkumfrASPKSshe2eJhoyymp79AD4o8L3NCAEGNAeBbT4SV71wzmcB
         wVbNDlkgloSjRBXNBH/DqfmaRvGR3zJNrugFGMfrh08QP9eum8ktj2Fix9LA5WIh144L
         o0CW+HnLDIA7XiJylwVIEySnXxwrLH7YwTzppJrB4j0nJqpwZC9jnW+X38L2B/jg8qp0
         ZHSWJg+xhXE9OM3tsbw8rr0D3S7xVqnevObgj9lW6tjhMykoUt1L6ZoA4H1npneHDflq
         c8XwNEzmm0XfjwLQ6i5x526jVI5IiU4FfKIk19HlLzZAFSwFy2aTvVnn16sOgMwCLCD4
         nCVA==
X-Gm-Message-State: AFqh2kroIJ2uCHE7ZHLH0Ci+GjEN+0yhSHIXgHdeJ9lxMXZAjv2EJDwx
	nA/auYwQlGJmJYw+B9Yvu/dj
X-Google-Smtp-Source: AMrXdXuRiszNGrahdiih775tFedEbPuYrEDVDujrhEjX5i2q3iO2KN2NrvpKq7SntYHOH003BwajVw==
X-Received: by 2002:a17:902:e5cd:b0:192:9140:ee76 with SMTP id u13-20020a170902e5cd00b001929140ee76mr86976458plf.37.1673680290585;
        Fri, 13 Jan 2023 23:11:30 -0800 (PST)
Received: from thinkpad ([220.158.159.156])
        by smtp.gmail.com with ESMTPSA id n6-20020a170903110600b00192d9258532sm15316913plh.150.2023.01.13.23.11.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 13 Jan 2023 23:11:29 -0800 (PST)
Date: Sat, 14 Jan 2023 12:41:24 +0530
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: Vinod Koul <vkoul@kernel.org>
Cc: martin.petersen@oracle.com, jejb@linux.ibm.com, andersson@kernel.org,
	quic_cang@quicinc.com, quic_asutoshd@quicinc.com,
	linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-phy@lists.infradead.org, linux-scsi@vger.kernel.org,
	dmitry.baryshkov@linaro.org, ahalaney@redhat.com,
	abel.vesa@linaro.org, alim.akhtar@samsung.com, avri.altman@wdc.com,
	bvanassche@acm.org
Subject: Re: [PATCH v5 00/23] ufs: qcom: Add HS-G4 support
Message-ID: <20230114071124.GA6992@thinkpad>
References: <20221222141001.54849-1-manivannan.sadhasivam@linaro.org>
 <Y8BNQZ/CFljuxsSL@matsya>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <Y8BNQZ/CFljuxsSL@matsya>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230113_231132_310961_9F741984 
X-CRM114-Status: GOOD (  19.42  )
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

T24gVGh1LCBKYW4gMTIsIDIwMjMgYXQgMTE6NDE6MTNQTSArMDUzMCwgVmlub2QgS291bCB3cm90
ZToKPiBPbiAyMi0xMi0yMiwgMTk6MzksIE1hbml2YW5uYW4gU2FkaGFzaXZhbSB3cm90ZToKPiA+
IEhlbGxvLAo+ID4gCj4gPiBUaGlzIHNlcmllcyBhZGRzIEhTLUc0IHN1cHBvcnQgdG8gdGhlIFFj
b20gVUZTIGRyaXZlciBhbmQgUEhZIGRyaXZlci4KPiA+IFRoZSBuZXdlciBRY29tIHBsYXRmb3Jt
cyBzdXBwb3J0IGNvbmZpZ3VyaW5nIHRoZSBVRlMgY29udHJvbGxlciBhbmQgUEhZCj4gPiBpbiBk
dWFsIGdlYXJzIChpLmUuLCBjb250cm9sbGVyL1BIWSBjYW4gYmUgY29uZmlndXJlZCB0byBydW4g
aW4gdHdvIGdlYXIKPiA+IHNwZWVkcykuIFRoaXMgaXMgYWNjb21wbGlzaGVkIGJ5IGFkZGluZyB0
d28gZGlmZmVyZW50IFBIWSBpbml0IHNlcXVlbmNlcwo+ID4gdG8gdGhlIFBIWSBkcml2ZXIgYW5k
IHRoZSBVRlMgZHJpdmVyIHJlcXVlc3RpbmcgdGhlIG9uZSB0aGF0J3MgcmVxdWlyZWQKPiA+IGJh
c2VkIG9uIHRoZSBwbGF0Zm9ybSBjb25maWd1cmF0aW9uLgo+ID4gCj4gPiBJbml0aWFsbHkgdGhl
IHVmcy1xY29tIGRyaXZlciB3aWxsIHVzZSB0aGUgZGVmYXVsdCBnZWFyIEcyIGZvciBlbnVtZXJh
dGluZwo+ID4gdGhlIFVGUyBkZXZpY2UuIEFmZXIgZW51bWVyYXRpb24sIHRoZSBtYXggZ2VhciBz
dXBwb3J0ZWQgYnkgYm90aCB0aGUKPiA+IGNvbnRyb2xsZXIgYW5kIGRldmljZSB3b3VsZCBiZSBm
b3VuZCBvdXQgYW5kIHRoYXQgd2lsbCBiZSB1c2VkIHRoZXJlYWZ0ZXIuCj4gPiBCdXQgZm9yIHVz
aW5nIHRoZSBtYXggZ2VhciBhZnRlciBlbnVtZXJhdGlvbiwgdGhlIHVmcy1xY29tIGRyaXZlciBy
ZXF1aXJlcwo+ID4gdGhlIFVGUyBkZXZpY2UgdG8gYmUgcmVpbml0aWFsaXplZC4gRm9yIHRoaXMg
cHVycG9zZSwgYSBzZXBhcmF0ZSBxdWlyayBoYXMKPiA+IGJlZW4gaW50cm9kdWNlZCBpbiB0aGUg
VUZTIGNvcmUgYWxvbmcgd2l0aCBhIGNhbGxiYWNrIGFuZCB0aG9zZSB3aWxsIGJlIHVzZWQKPiA+
IGJ5IHRoZSB1ZnMtcWNvbSBkcml2ZXIuCj4gCj4gVGhlIHNlcmllcyBsZ3RtLiBUaGlzIGZhaWxz
IGZvciBtZSB0byBhcHBseSB0aG91Z2ggZHVlIHRvIG90aGVyIHBhdGNoZXMKPiBJIGhhdmUgcGlj
a2VkIHVwLgo+IAo+IENhbiB5b3UgcGxlYXNlIHJlYmFzZSB0aGUgcGh5IHBhdGNoZXMgYW5kIHNl
bmQgdGhvc2UgCj4gCgpEb25lIQoKVGhhbmtzLApNYW5pCgo+IC0tIAo+IH5WaW5vZAoKLS0gCuCu
ruCuo+Cuv+CuteCuo+CvjeCuo+CuqeCvjSDgrprgrqTgrr7grprgrr/grrXgrq7gr40KCi0tIAps
aW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBz
Oi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
