Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D36D8CCA488
	for <linux-phy@archiver.kernel.org>; Thu, 21 Jul 2022 10:15:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dKsYRnTIUotrWncrY/Dc7CXkfR0t/PsWAZa/uZrNpA4=; b=OkO614+PU6JguE
	b1q37cZSEFJzgZa/Ys7d80bshvRtKbm2A3rWjHabULOQ5EjoV/GFM3gt9B6pKssmj2aApX9hLtmOf
	e/Mx95DMqWq/xkigrzZoopYr3tHlSwdeFve7koE3i424uicWWatUR15wf2tCeq8o3zlKXktkP7iPb
	b60k8llbZp3tGsrq3EL5vWuvVEqbv7kNUSXGprLYIbVkIlCQL3Du8wJirsIR+2llN7SQ1hKD1UPdZ
	iQvzRoMIu6BhA+RrgRo2ehwGeP5eUPBKxqrz9NnLSTnusyZkRtqpxD/i96k+CWXWEZKBcvb2pBkAn
	XXNKA8zOmDdlNZu6bXOg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oETDd-003lNC-7H; Thu, 21 Jul 2022 10:15:45 +0000
Received: from mail-pl1-x62f.google.com ([2607:f8b0:4864:20::62f])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oETDa-003lKB-GS
	for linux-phy@lists.infradead.org; Thu, 21 Jul 2022 10:15:44 +0000
Received: by mail-pl1-x62f.google.com with SMTP id g17so1390221plh.2
        for <linux-phy@lists.infradead.org>; Thu, 21 Jul 2022 03:15:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to;
        bh=oR90Wy+BbIseki+Ksn9Fge8gQuYW/CcYg/B9Ro/uOaM=;
        b=vGuW2fZsTVl5M8xmJhehdo8lqxDuQ5yr9DArKQICoR6CN3HWeO4poEc+qPqUKeEsGf
         HPh/8TZ13ybohlbRVEfNOmAMoQfJbbi7qg+vjoNvGDqE0y26DENnspAqIW4pNTZy+Xxv
         WkXxXl1l4DOXhOMD6IH3OU6BO/nRbZChQO5cyPecoJ0amY1cgCbVE0Ya0N6NK4i2uQvW
         vuNZL0ri3CZGKckLiq+MgCKbUGisIN39BjUOPpAMx2JypRl8keehy/xbbUZQfmo9zEEL
         6ksnDfg/by2TAHkfs1sTBL+aP041FbQmonoeRNVDdnKEjilVINjPwt87mO/qSxMJN2ij
         olVg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:content-transfer-encoding
         :in-reply-to;
        bh=oR90Wy+BbIseki+Ksn9Fge8gQuYW/CcYg/B9Ro/uOaM=;
        b=PVeMQAMvlT9ABLFtXXcfYXfYoIeo8keax59Tq+JeNVUn8EsCVVy71TK5XWN7J/Rce1
         v4XDRgulxx2GVJMGR3TPYoQV4ziQ/Y9JwrkGjbrIcI83GnVDJ+cIo4RzzaNzZnVReNnz
         OS5ARf85kM49K9RHAhDth3O9b4vrsryxD5JrM4XaEsu3Tk5vl0Jv2+Q/YHhfMJsWRuf2
         +4JK7vLoGfNRsFDfjth3Q8lx1QWnLU8BfgiBQKsZetv3evNpFZ5gbVpdJCWQy4cE0LEi
         wPyo1XS2LJdp2ishHOWdVElLtcbNo2r680XHVfAsqGagOaUQT5QAeHTUccam5I69osGu
         dywg==
X-Gm-Message-State: AJIora867F1PCP3RT4LQq7i4kRxKGuN7XZa3ec5izvQJ9OZK6iv9A70E
	b2xicGvyo2MOAN6+0R9RWIo+
X-Google-Smtp-Source: AGRyM1ueo2HzVXQZMwOgDCxW+IQN5HQEHOxiTty+UmlVUWeUsZ8VqZ1t97OKyHfMBZShN/keuCkvTQ==
X-Received: by 2002:a17:90b:4b4d:b0:1ef:a2c2:6bcc with SMTP id mi13-20020a17090b4b4d00b001efa2c26bccmr10619762pjb.186.1658398539759;
        Thu, 21 Jul 2022 03:15:39 -0700 (PDT)
Received: from thinkpad ([117.217.186.184])
        by smtp.gmail.com with ESMTPSA id 36-20020a630e64000000b0040df0c9a1aasm1116409pgo.14.2022.07.21.03.15.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 21 Jul 2022 03:15:39 -0700 (PDT)
Date: Thu, 21 Jul 2022 15:45:30 +0530
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <bjorn.andersson@linaro.org>,
	Konrad Dybcio <konrad.dybcio@somainline.org>,
	Rob Herring <robh+dt@kernel.org>, Jingoo Han <jingoohan1@gmail.com>,
	Gustavo Pimentel <gustavo.pimentel@synopsys.com>,
	Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>,
	Bjorn Helgaas <bhelgaas@google.com>, Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@ti.com>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	Johan Hovold <johan@kernel.org>, linux-arm-msm@vger.kernel.org,
	linux-pci@vger.kernel.org, linux-phy@lists.infradead.org
Subject: Re: [RFC PATCH 0/4] PCI: qcom: support using the same PHY for both
 RC and EP
Message-ID: <20220721101530.GE39125@thinkpad>
References: <20220719200626.976084-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220719200626.976084-1-dmitry.baryshkov@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220721_031542_645312_84E359A2 
X-CRM114-Status: GOOD (  22.93  )
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

T24gVHVlLCBKdWwgMTksIDIwMjIgYXQgMTE6MDY6MjJQTSArMDMwMCwgRG1pdHJ5IEJhcnlzaGtv
diB3cm90ZToKPiBQcm9ncmFtbWluZyBvZiBRTVAgUENJZSBQSFlzIHNsaWdodGx5IGRpZmZlcnMg
YmV0d2VlbiBSQyBhbmQgRVAgbW9kZXMuCj4gCj4gQ3VycmVudGx5IGJvdGggcWNvbSBhbmQgcWNv
bS1lcCBQQ0llIGNvbnRyb2xsZXJzIHNldHVwIHRoZSBQSFkgaW4gdGhlCj4gZGVmYXVsdCBtb2Rl
LCBtYWtpbmcgaXQgaW1wb3NzaWJsZSB0byBzZWxlY3QgYXQgcnVudGltZSB3aGV0aGVyIHRoZSBQ
SFkKPiBzaG91bGQgYmUgcnVubmluZyBpbiBSQyBvciBpbiBFUCBtb2Rlcy4gVXN1YWxseSB0aGlz
IGlzIG5vdCBhbiBpc3N1ZSwKPiBzaW5jZSBmb3IgbW9zdCBkZXZpY2VzIG9ubHkgdGhlIFJDIG1v
ZGUgaXMgdXNlZCwgd2hpbGUgZm9yIHNvbWUgKFNEWDU1KQo+IHRoZSBFUCBtb2RlIGlzIHVzZWQg
d2l0aG91dCBzdXBwb3J0IGZvciB3b3JraW5nIGFzIHRoZSBSQy4KPiAKClNEWDU1IGNvdWxkIHdv
cmsgaW4gUkMgbW9kZSBhbHNvLiBTdXBwb3J0IGlzIG9uIHRoZSB3YXkuCgo+IFNvbWUgb2YgdGhl
IFF1YWxjb21tIHBsYXRmb3JtcyB3b3VsZCBzdGlsbCBiZW5lZml0IGZyb20gYmVpbmcgYWJsZSB0
bwo+IHN3aXRjaCBiZXR3ZWVuIFJDIGFuZCBFUCBkZXBlbmRpbmcgb24gdGhlIGRyaXZlciBiZWlu
ZyB1c2VkLiBXaGlsZSBpdCBpcwo+IHBvc3NpYmxlIHRvIHVzZSBkaWZmZXJlbnQgY29tcGF0IHN0
cmluZ3MgZm9yIHRoZSBQSFkgZGVwZW5kaW5nIG9uIHRoZQo+IG1vZGUsIGl0IHNlZW1zIGxpa2Ug
YW4gaW5jb3JyZWN0IGFwcHJvYWNoLCBzaW5jZSB0aGUgUEhZIGRvZXNuJ3QgZGlmZmVyCj4gYmV0
d2VlbiB1c2VjYXNlcy4gSXQncyB0aGUgUENJZSBjb250cm9sbGVyLCB3aG8gc2hvdWxkIGRlY2lk
ZSBob3cgdG8KPiBjb25maWd1cmUgdGhlIFBIWS4KPiAKPiBUaGlzIHBhdGNoIHNlcmllcyBpbXBs
ZW1lbnRzIHRoZSBhYmlsaXR5IHRvIHNlbGVjdCBiZXR3ZWVuIFJDIGFuZCBFUAo+IG1vZGVzLCBi
eSBhbGxvd2luZyB0aGUgUENJZSBRTVAgUEhZIGRyaXZlciB0byBzd2l0Y2ggYmV0d2Vlbgo+IHBy
b2dyYW1taW5nIHRhYmxlcy4KPiAKClRoaXMgaXMgcmVhbGx5IG5pY2UhIE9uIHRoZSBjYXNlIG9m
IFNEWDU1LCB0aGVyZSBpcyBhIHNpbmdsZSBQSFkgYW5kIFBDSWUKY29udHJvbGxlciB0aGF0IGlz
IGJlaW5nIHVzZWQgYXMgYm90aCBSQyBhbmQgRVAgZGVwZW5kaW5nIG9uIHRoZSB1c2VjYXNlLiBX
aGlsZQppdCBtYWtlcyBzZW5zZSB0byB1c2UgYSBkaWZmZXJlbnQgUENJZSBub2RlIGJhc2VkIG9u
IHVzZWNhc2UsIGl0IGRvZXMgbm90IGZvcgp0aGUgUEhZLiBTbyB0aGUgcnVudGltZSBzd2l0Y2gg
aXMgYSBuZWF0IHdheSBvZiBoYW5kbGluZyB0aGUgZGlmZmVyZW5jZXMuCgpJJ3ZlIHByb3ZpZGVk
IG15IHJldmlldyBmb3IgdGhlIHBhdGNoZXMuIEJ1dCBmb3IgdGhlIG5leHQgaXRlcmF0aW9uLCB5
b3UgY291bGQKcmVtb3ZlIHRoZSBSRkMgdGFnLgoKQWxzbywgcGxlYXNlIG1lbnRpb24gdGhlIGRl
cGVuZGVuY3kgb2YgdGhlIHNlcmllcyBpbiB0aGUgY292ZXIgbGV0dGVyIGlmIGFueS4KTGlrZSB0
aGlzIG9uZSBkZXBlbmRzIG9uIHlvdXIgcHJldmlvdXMgUEhZIGNsZWFudXAgc2VyaWVzLiBJdCB3
aWxsIGhlbHAKbWFpbnRhaW5lcnMgd2hpbGUgcGlja2luZyB0aGUgcGF0Y2hlcy4KClRoYW5rcyBh
IGxvdCBmb3IgdGhlIHNlcmllcyEKClJlZ2FyZHMsCk1hbmkKCj4gRG1pdHJ5IEJhcnlzaGtvdiAo
NCk6Cj4gICBwaHk6IHFjb20tcW1wLXBjaWU6IHNwbGl0IHJlZ2lzdGVyIHRhYmxlcyBpbnRvIHBy
aW1hcnkgYW5kIHNlY29uZGFyeQo+ICAgICBwYXJ0Cj4gICBwaHk6IHFjb20tcW1wLXBjaWU6IHN1
cHBvciBzZXBhcmF0ZSB0YWJsZXMgZm9yIEVQIG1vZGUKPiAgIFBDSTogcWNvbTogY2FsbCBwaHlf
c2V0X21vZGVfZXh0KCkKPiAgIFBDSTogcWNvbS1lcDogY2FsbCBwaHlfc2V0X21vZGVfZXh0KCkK
PiAKPiAgZHJpdmVycy9wY2kvY29udHJvbGxlci9kd2MvcGNpZS1xY29tLWVwLmMgfCAgIDQgKwo+
ICBkcml2ZXJzL3BjaS9jb250cm9sbGVyL2R3Yy9wY2llLXFjb20uYyAgICB8ICAgNCArCj4gIGRy
aXZlcnMvcGh5L3F1YWxjb21tL3BoeS1xY29tLXFtcC1wY2llLmMgIHwgMTU1ICsrKysrKysrKysr
Ky0tLS0tLS0tLS0KPiAgMyBmaWxlcyBjaGFuZ2VkLCA5NiBpbnNlcnRpb25zKCspLCA2NyBkZWxl
dGlvbnMoLSkKPiAKPiAtLSAKPiAyLjM1LjEKPiAKCi0tIArgrq7grqPgrr/grrXgrqPgr43grqPg
rqngr40g4K6a4K6k4K6+4K6a4K6/4K614K6u4K+NCgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlz
dApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5v
cmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
