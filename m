Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 15851C433FE
	for <linux-phy@archiver.kernel.org>; Thu,  3 Nov 2022 12:18:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=P8xN+KQ8jVhVf6ayuo8rnhEZQUM2+nMe7eS8rNItwNU=; b=fQAhtsBudj/JVz
	Yowpy9LOIyopRgy1F5XovHSDKN/RLfKe7sO1kCdfyA9MgVYGtd7kTe2KwSBstNgQPFsQMwmQtSzVp
	ihjFIANG9t/WqfDZmCEay6iF7lKNE+aeue+rY+kcXRs5s21Qu6tDNwyhJltQxuz/qLDcyjX2gj+5t
	QcVM4mZwkRj35HgSF221AlGGuxZ2UEVJdZctrYXaifBSjyRhu9FXghBMPNBcskGK0Z26F7l/ZoJbG
	l61rD+gpXt/LgY/AfkvYm3kbS3U8tpQbZogZRg/g8dwL55+vR3F6WNFn2tYCvXA1qlr9Dogi96sdb
	/PIa9r0COY7nuGX9u9vw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oqZBG-00HIp5-DV; Thu, 03 Nov 2022 12:18:46 +0000
Received: from mail-pj1-x1034.google.com ([2607:f8b0:4864:20::1034])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oqZBC-00HIoC-Sw
	for linux-phy@lists.infradead.org; Thu, 03 Nov 2022 12:18:44 +0000
Received: by mail-pj1-x1034.google.com with SMTP id l6so1477160pjj.0
        for <linux-phy@lists.infradead.org>; Thu, 03 Nov 2022 05:18:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=ygNaIetYDLkI+evDCg3dhQCdfjyfTMAjhVLdsT971NY=;
        b=mKz/1aczMZ67kTZ72O3gcxFhmzopOSkKcpsO+Zp+R7ACs0+SVrXT34MSkh0JnSvUJN
         pRes/DTOnYOA8IDbUkq/gJQLe1wzu6wqXPbIEf8Z5j2U4Oussq9WhGVLvmbqCQl7KWko
         rB5FUMv/+nw/R55JC15gAsLd1ax+R+4DY+WziYtSTAeHYUiYbXjgJoSXwD13wiftzrB7
         1p5mIBQCHHzjZq7Jvp8h6WCuOTgBx33PKq9wiCsAH7lleXn9pxW4jZE6H3Z69RiVsGEN
         yy1Kvp/t9VIWZrElYKgL3xf/ahnl3wOZnhXoyqhT6B7i1YydkW/foSQxDOO5P8fLGW3h
         uG+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=ygNaIetYDLkI+evDCg3dhQCdfjyfTMAjhVLdsT971NY=;
        b=kKrVO9jHb8dXQwLv725m4v3vo4PQh75DMGO1C88gtxC2B5FLpNX6f/yeLLHjymg4Ur
         AWAgGeqa5yQlW+jSTeaZGI7aFkgJguNI4mjVq6xwuN0sfaKX70kn0EvxBgqVoHc/aOZN
         r5E7348g11dLBWtVhrUiWskWEATIpvSYrQZZPyX5xVnj5LFZOLs6WjR2eVOJoPyKc4P4
         SsHtltQ4nzGQlRWlBBZE2Qwkl0uZE+p9zxaTSjm+gdtS8He3XG2nG6AugkrpjxfJE/4q
         Ta4YFebMp1BXGNJWiqDFnfl7fvcxYG7O8RRXHZ1xKIqXMFlAP/70eTyPTNHAYuW64lHH
         ScIw==
X-Gm-Message-State: ACrzQf0W+1Ng6pLp6/S409i9tOQw/HnfTdYrn88znQFNhmuGip3E2nAp
	9Fv/PQe9lxrnalbuhqPO675C
X-Google-Smtp-Source: AMsMyM7l5kGXg75re2lQpzMr+ympZfelYvdDLHbZqWdB90Zy+RAplKpykYidN+wfIs5fosIq4Kwf2Q==
X-Received: by 2002:a17:902:cec8:b0:186:8553:79c8 with SMTP id d8-20020a170902cec800b00186855379c8mr29444683plg.160.1667477918804;
        Thu, 03 Nov 2022 05:18:38 -0700 (PDT)
Received: from thinkpad ([59.92.102.81])
        by smtp.gmail.com with ESMTPSA id w189-20020a6282c6000000b0056c04dee930sm614950pfd.120.2022.11.03.05.18.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 03 Nov 2022 05:18:37 -0700 (PDT)
Date: Thu, 3 Nov 2022 17:48:30 +0530
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
	martin.petersen@oracle.com, jejb@linux.ibm.com,
	andersson@kernel.org, vkoul@kernel.org,
	krzysztof.kozlowski+dt@linaro.org, konrad.dybcio@somainline.org,
	robh+dt@kernel.org, quic_cang@quicinc.com,
	linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org,
	linux-scsi@vger.kernel.org
Subject: Re: [PATCH 14/15] scsi: ufs: ufs-qcom: Add support for finding HS
 gear on new UFS versions
Message-ID: <20221103121830.GC8434@thinkpad>
References: <20221029141633.295650-1-manivannan.sadhasivam@linaro.org>
 <20221029141633.295650-15-manivannan.sadhasivam@linaro.org>
 <cf8dcf53-f131-68f4-c6aa-d41e02ac6d5c@linaro.org>
 <20221031145647.GC10515@thinkpad>
 <d11609d5-963a-de41-86f9-7451f460b6fa@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <d11609d5-963a-de41-86f9-7451f460b6fa@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221103_051843_526212_1B940A43 
X-CRM114-Status: GOOD (  28.07  )
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

T24gV2VkLCBOb3YgMDIsIDIwMjIgYXQgMDQ6MDU6MzRQTSAtMDQwMCwgS3J6eXN6dG9mIEtvemxv
d3NraSB3cm90ZToKPiBPbiAzMS8xMC8yMDIyIDEwOjU2LCBNYW5pdmFubmFuIFNhZGhhc2l2YW0g
d3JvdGU6Cj4gPj4+ICAgCQlpZiAoaHNfZ2VhciA+IFVGU19IU19HMikKPiA+Pj4gICAJCQlyZXR1
cm4gVUZTX0hTX0cyOwo+ID4+PiArCX0gZWxzZSBpZiAoaG9zdC0+aHdfdmVyLm1ham9yID4gMHgz
KSB7Cj4gPj4+ICsJCS8qCj4gPj4+ICsJCSAqIFN0YXJ0aW5nIGZyb20gVUZTIGNvbnRyb2xsZXIg
djQsIFFjb20gc3VwcG9ydHMgZHVhbCBnZWFyIG1vZGUgKGkuZS4sIHRoZQo+ID4+PiArCQkgKiBj
b250cm9sbGVyL1BIWSBjYW4gYmUgY29uZmlndXJlZCB0byBydW4gaW4gdHdvIGdlYXIgc3BlZWRz
KS4gQnV0IHRoYXQKPiA+Pj4gKwkJICogcmVxdWlyZXMgYW4gYWdyZWVtZW50IGJldHdlZW4gdGhl
IFVGUyBjb250cm9sbGVyIGFuZCB0aGUgZGV2aWNlLiBCZWxvdwo+ID4+PiArCQkgKiBjb2RlIHRy
aWVzIHRvIGZpbmQgdGhlIG1heCBnZWFyIG9mIGJvdGggYW5kIGRlY2lkZXMgd2hpY2ggZ2VhciB0
byB1c2UuCj4gPj4+ICsJCSAqCj4gPj4+ICsJCSAqIEZpcnN0IGdldCB0aGUgbWF4IGdlYXIgc3Vw
cG9ydGVkIGJ5IHRoZSBVRlMgZGV2aWNlIGlmIGF2YWlsYWJsZS4KPiA+Pj4gKwkJICogSWYgdGhl
IHByb3BlcnR5IGlzIG5vdCBkZWZpbmVkIGluIGRldmljZXRyZWUsIHRoZW4gdXNlIHRoZSBkZWZh
dWx0IGdlYXIuCj4gPj4+ICsJCSAqLwo+ID4+PiArCQlyZXQgPSBvZl9wcm9wZXJ0eV9yZWFkX3Uz
MihkZXYtPm9mX25vZGUsICJtYXgtZ2VhciIsICZtYXhfZ2Vhcik7Cj4gPj4+ICsJCWlmIChyZXQp
Cj4gPj4+ICsJCQlnb3RvIGVycl9vdXQ7Cj4gPj4KPiA+PiBDYW4gd2UgZGV0ZWN0IHRoZSBVRlMg
ZGV2aWNlJ3MgbWF4IGdlYXIgc29tZWhvdz8gSWYgbm90LCB0aGUgJ21heC1nZWFyJwo+ID4+IHBy
b3BlcnR5IG5hbWUgZG9lc24ndCBzb3VuZCBnb29kLiBNYXliZSBjYWxsaW5nIGl0ICdkZXZpY2Ut
Z2Vhcicgd291bGQgYmUKPiA+PiBiZXR0ZXIuCj4gPj4KPiA+IAo+ID4gVUZTIGRldmljZSBwcm9i
aW5nIGRlcGVuZHMgb24gUEhZIGluaXQgc2VxdWVuY2UuIFNvIHRlY2huaWNhbGx5IHdlIGNhbm5v
dCBrbm93Cj4gPiB0aGUgbWF4IGdlYXIgb2YgdGhlIGRldmljZSB3aXRob3V0IHVzaW5nIGFuIGlu
aXQgc2VxdWVuY2UsIGJ1dCB0aGlzIGluZm9ybWF0aW9uCj4gPiBpcyBzdGF0aWMgYW5kIHNob3Vs
ZCBiZSBrbm93biB0byBhIGJvYXJkIG1hbnVmYWN0dXJlci4gVGhhdCdzIHdoeSBJIGRlY2lkZWQg
dG8KPiA+IHVzZSB0aGlzIHByb3BlcnR5LiBBbm90aGVyIG9wdGlvbiBpcyB0byB1c2UgYSBmaXhl
ZCBpbml0IHNlcXVlbmNlIGZvciBwcm9iaW5nCj4gPiB0aGUgZGV2aWNlIGFuZCBkbyBhIHJlLWlu
aXQgYWZ0ZXIga25vd2luZyBpdCdzIG1heCBnZWFyIGJ1dCB0aGF0IGlzIG5vdAo+ID4gcmVjb21t
ZW5kZWQuCj4gPiAKPiAKPiBXaHkgaXQgaXMgbm90IHJlY29tbWVuZGVkPyBCeSB3aG9tPyBZb3Ug
aW5pdCBvbiBzb21lIGRlZmF1bHQgbG93IGdlYXIKPiAoc3VwcG9ydCBmb3Igc29tZSBpcyBtYW5k
YXRlZCBieSBVRlMgc3BlYykgYW5kIHRoZW4gYWxsb3cgZmFzdGVyIGdlYXJzCj4gd2hpbGUgeW91
IGtub3cgdGhlIGNhcGFiaWxpdGllcy4KPiAKClRoaXMgYXBwcm9hY2ggaXMgd2hhdCB1c2VkIGlu
IFFjb20gZG93bnN0cmVhbS4gSSBsZWFybmVkIHRoYXQgd2hlbiB0aGV5IHRyaWVkCnN1Ym1pdHRp
bmcgdG8gbWFpbGluZyBsaXN0LCBpdCBnb3QgcmVqZWN0ZWQuIFNvIEkgY2FtZSB1cCB3aXRoIHRo
aXMgYXBwcm9hY2guCgpUaGFua3MsCk1hbmkKCj4gPiBXZSBuZWVkICJtYXgiIGtleXdvcmQgYmVj
YXVzZSB0aGlzIHByb3BlcnR5IHNwZWNpZmllcyB0aGUgbWF4aW11bSBnZWFyIGF0IHdoaWNoCj4g
PiB0aGUgZGV2aWNlIGNvdWxkIG9wZXJhdGUgYW5kIG5vdCBuZWNlc3NhcmlseSB0aGUgZ2VhciBh
dCB3aGljaCBpdCBvcGVyYXRlcy4KPiA+IE1heWJlLCAibWF4LWRldmljZS1nZWFyIiB3b3VsZCBt
YWtlIGl0IGNsZWFyLgo+IAo+IAo+IEJlc3QgcmVnYXJkcywKPiBLcnp5c3p0b2YKPiAKCi0tIArg
rq7grqPgrr/grrXgrqPgr43grqPgrqngr40g4K6a4K6k4K6+4K6a4K6/4K614K6u4K+NCgotLSAK
bGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRw
czovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
