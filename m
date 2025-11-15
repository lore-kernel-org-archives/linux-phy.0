Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B111FCEB2C0
	for <linux-phy@archiver.kernel.org>; Sat, 15 Nov 2025 04:23:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NhCQjWWUxzVqakIDkhXcJGCKOS0HDRUDYAS1zP4K1VI=; b=nbXoyJTrD6uyAN
	oQ9vfE6uE17WJHWnNw3QV6prO/7OJHfCreE3RbWXEIBOv1fLSPooMCmPXufASDTcKgG/Q8PJIvCZ7
	VPt+VmcOyHyeKQCZJZPrWQewhYXDZh1/rn1KvZ0acfheNvV62IjPyLabuzO5EpRZIoA3pXA5J+Y+g
	8x34ulqy7D1Zs9Gmo11VD/xLEWbbNO2Y/IN74GW9UJHpgYm+LtM03oOOUUsNqo6MqG7sqJNjzqAmT
	hzzHqFyTpr48/I3yn9TQ3YscEPXnDCHGKbP45Av2KLdOCVt91x2KLwMq9yLsNcMWgEzFqsvZI4isf
	kBNeTEALgx+9B28VIvyg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vK7ow-0000000DSuz-3tow;
	Sat, 15 Nov 2025 04:23:30 +0000
Received: from us-smtp-delivery-124.mimecast.com ([170.10.129.124])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vK7ot-0000000DSu8-2DSh
	for linux-phy@lists.infradead.org;
	Sat, 15 Nov 2025 04:23:29 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1763180605;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=n/tk0v+4BBK6qP0Q9YzuiptrPfp0eR+Hy5aITCdFIu8=;
	b=cHg5uIUmGH5GirhZvDd1bxwuVLcu88GVUI8fbTb2d8XXV/13/dcL5ASFjvAYMJUGFofJYi
	lZrltULmcTLDpgqqiunV4jP+IX3EzlgGjb2fNOHRgbx1rbOufkRGosjQEDn6tLvZUirih/
	pINiycglCjV4p1nEYRbuv8CXUxy1VRg=
Received: from mail-pl1-f198.google.com (mail-pl1-f198.google.com
 [209.85.214.198]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-679-R-bWc7gmNruGYRHuP7f0uA-1; Fri, 14 Nov 2025 23:21:51 -0500
X-MC-Unique: R-bWc7gmNruGYRHuP7f0uA-1
X-Mimecast-MFC-AGG-ID: R-bWc7gmNruGYRHuP7f0uA_1763180510
Received: by mail-pl1-f198.google.com with SMTP id d9443c01a7336-297fbfb4e53so47321475ad.1
        for <linux-phy@lists.infradead.org>; Fri, 14 Nov 2025 20:21:51 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763180510; x=1763785310;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=n/tk0v+4BBK6qP0Q9YzuiptrPfp0eR+Hy5aITCdFIu8=;
        b=eQRIe0sqwW2dEwT8B1UpmUV5xYWibjAA5llui68TPPHFimoWtRIFTWHtNXWswwvW4Y
         Mkn/UwJrqxIzZv30kg6iRjmRafkD1PmjkptrU2vlGx4lhLAHrZgdx5R/DaxtbhtYY0R1
         18f/bMnLqoLhshQZZQgaFZIEjncDPGTwbuerr9s82yz84exrYxWVSnq1vunBMhKMoG/R
         mbpLi9GuK3xq04dCNQof6+wJDiXXwHpuy3vx40wYnBOdiSZ0hTM+emGrcItXHlpCoeeF
         GwkO6VZXbaod+nmWxeeTi+gOn8h73sZKZ4qa4pco1Are2bfyz61Hp2ndCsIl0sR85q/J
         EgZg==
X-Forwarded-Encrypted: i=1; AJvYcCXqNVmMfXrsQ2k4XxZ4FHUV81Cigo4pu+Oc/VJEiIawPH6qsU9NZcdFuaE6LaIM349/pWn7+CVkc8k=@lists.infradead.org
X-Gm-Message-State: AOJu0YwPz/TEnOXZPeQj3i9JMZfpZ7M1joDLtZlYq2xxDknr8mIfaJY2
	UYoD7Z5++r5pKA6L5hBhguxynMNFfW+ombM2oxsgaeEQpqTHK0TrRQ4lGgfvJOo6nqQphiGgmaQ
	mbsSsXDbK/a0SGKl5CSEurr96PakoyRSM/mWp03/avmNfxubmKW/cgIihFOHdbVftiIcjKs2BJb
	1UFmq7ZNdw+06Jjwifx4n9E3d9x+klfBdXH7ftbCKkHQ==
X-Gm-Gg: ASbGncs50w941/858PkavBmrGUk1tVE7pugAiUIBVvDXFk8okpPwYltwBP153osF6oO
	Tc76lwO32rOAlx4wo2RG2WkWwg00h8/rmQ3yaVWjon7ghU55FFGcKPsXv8CqQWnFz+gbDItdT/9
	uKkcCurdDnWxgmcsopPMrkKoGhAw1Awfth/i6tJQ2eqWKLfp63egx08Gcs
X-Received: by 2002:a17:903:120b:b0:295:987d:f7ef with SMTP id d9443c01a7336-2986a6b5698mr58952785ad.10.1763180510152;
        Fri, 14 Nov 2025 20:21:50 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGpWOiKe/yoXVPzbbB8ra3b08yL+JrFximT86RMx9yWBQlaBgFV6FIkea9RBX9X7EoOn4xsE8DGGa3NwoDYNSY=
X-Received: by 2002:a17:903:120b:b0:295:987d:f7ef with SMTP id
 d9443c01a7336-2986a6b5698mr58952445ad.10.1763180509717; Fri, 14 Nov 2025
 20:21:49 -0800 (PST)
MIME-Version: 1.0
References: <20251113214540.2623070-1-elder@riscstar.com>
In-Reply-To: <20251113214540.2623070-1-elder@riscstar.com>
From: Jason Montleon <jmontleo@redhat.com>
Date: Fri, 14 Nov 2025 23:21:38 -0500
X-Gm-Features: AWmQ_bm8Az7GW4XBfoBLWD-9SdtXqiB6zadKcTvspIsW8QHKFXbXxVXEFbaU15U
Message-ID: <CAJD_bP+AjhNCB6kCeKdnXERjP9j8dhbCejnS1OVmFf_VShti5Q@mail.gmail.com>
Subject: Re: [PATCH v6 0/7] Introduce SpacemiT K1 PCIe phy and host controller
To: Alex Elder <elder@riscstar.com>
Cc: dlan@gentoo.org, robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, 
	vkoul@kernel.org, kishon@kernel.org, bhelgaas@google.com, 
	lpieralisi@kernel.org, kwilczynski@kernel.org, mani@kernel.org, 
	ziyao@disroot.org, aurelien@aurel32.net, johannes@erdfelt.com, 
	mayank.rana@oss.qualcomm.com, qiang.yu@oss.qualcomm.com, 
	shradha.t@samsung.com, inochiama@gmail.com, pjw@kernel.org, 
	palmer@dabbelt.com, aou@eecs.berkeley.edu, alex@ghiti.fr, 
	p.zabel@pengutronix.de, christian.bruel@foss.st.com, 
	thippeswamy.havalige@amd.com, krishna.chundru@oss.qualcomm.com, 
	guodong@riscstar.com, devicetree@vger.kernel.org, linux-pci@vger.kernel.org, 
	linux-phy@lists.infradead.org, spacemit@lists.linux.dev, 
	linux-riscv@lists.infradead.org, linux-kernel@vger.kernel.org
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: zk1qnztfkmD5o8vbzKO6l2htNtlLuaALlHTYkNXCCrM_1763180510
X-Mimecast-Originator: redhat.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251114_202327_668062_111E28D7 
X-CRM114-Status: GOOD (  16.96  )
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

T24gVGh1LCBOb3YgMTMsIDIwMjUgYXQgNDo0NeKAr1BNIEFsZXggRWxkZXIgPGVsZGVyQHJpc2Nz
dGFyLmNvbT4gd3JvdGU6Cj4KPiBUaGlzIHNlcmllcyBpbnRyb2R1Y2VzIGEgUEhZIGRyaXZlciBh
bmQgYSBQQ0llIGRyaXZlciB0byBzdXBwb3J0IFBDSWUKPiBvbiB0aGUgU3BhY2VtaVQgSzEgU29D
LiAgVGhlIFBDSWUgaW1wbGVtZW50YXRpb24gaXMgZGVyaXZlZCBmcm9tIGEKPiBTeW5vcHN5cyBE
ZXNpZ25XYXJlIFBDSWUgSVAuICBUaGUgUEhZIGRyaXZlciBzdXBwb3J0cyBvbmUgY29tYmluYXRp
b24KPiBQQ0llL1VTQiBQSFkgYXMgd2VsbCBhcyB0d28gUENJZS1vbmx5IFBIWXMuICBUaGUgY29t
Ym8gUEhZIHBvcnQgdXNlcwo+IG9uZSBQQ0llIGxhbmUsIGFuZCB0aGUgb3RoZXIgdHdvIHBvcnRz
IGVhY2ggaGF2ZSB0d28gbGFuZXMuICBBbGwgUENJZQo+IHBvcnRzIG9wZXJhdGUgYXQgNSBHVC9z
ZWNvbmQuCj4KPiBUaGUgUENJZSBQSFlzIG11c3QgYmUgY29uZmlndXJlZCB1c2luZyBhIHZhbHVl
IHRoYXQgY2FuIG9ubHkgYmUKPiBkZXRlcm1pbmVkIHVzaW5nIHRoZSBjb21ibyBQSFksIG9wZXJh
dGluZyBpbiBQQ0llIG1vZGUuICBUbyBhbGxvdwo+IHRoYXQgUEhZIHRvIGJlIHVzZWQgZm9yIFVT
QiwgdGhlIG5lZWRlZCBjYWxpYnJhdGlvbiBzdGVwIGlzIHBlcmZvcm1lZAo+IGJ5IHRoZSBQSFkg
ZHJpdmVyIGF1dG9tYXRpY2FsbHkgYXQgcHJvYmUgdGltZS4gIE9uY2UgdGhpcyBzdGVwIGlzIGRv
bmUsCj4gdGhlIFBIWSBjYW4gYmUgdXNlZCBmb3IgZWl0aGVyIFBDSWUgb3IgVVNCLgo+Cj4gVGhl
IGRyaXZlciBzdXBwb3J0cyAyNTYgTVNJcywgYW5kIGluaXRpYWxseSBkb2VzIG5vdCBzdXBwb3J0
IFBDSSBJTlR4Cj4gaW50ZXJydXB0cy4gIFRoZSBoYXJkd2FyZSBkb2VzIG5vdCBzdXBwb3J0IE1T
SS1YLgo+Cj4gVmVyc2lvbiA2IG9mIHRoaXMgc2VyaWVzIGFkZHJlc3NlcyBhIGZldyBjb21tZW50
cyBmcm9tIENocmlzdG9waGUKPiBKYWlsbGV0LCBhbmQgaW1wcm92ZXMgYSB3b3JrYXJvdW5kIHRo
YXQgZGlzYWJsZXMgQVNQTSBMMS4gIFRoZSB0d28KPiBwZW9wbGUgd2hvIGhhZCByZXBvcnRlZCBl
cnJvcnMgb24gZWFybGllciB2ZXJzaW9ucyBvZiB0aGlzIGNvZGUgaGF2ZQo+IGNvbmZpcm1lZCB0
aGVpciBOVk1lIGRldmljZXMgbm93IHdvcmsgd2hlbiBjb25maWd1cmVkIHdpdGggdGhlIGRlZmF1
bHQKPiBSSVNDLVYga2VybmVsIGNvbmZpZ3VyYXRpb24uCgpJIHN1Y2Nlc3NmdWxseSB0ZXN0ZWQg
dGhpcyBwYXRjaHNldCBvbiBhIEJhbmFuYSBQaSBGMyBhbmQgYWxzbyBhCk1pbGstViBNMSBKdXBp
dGVyIGJ5IG1ha2luZyB0aGUgc2FtZSBhZGRpdGlvbnMgdG8gazEtbWlsa3YtanVwaXRlci5kdHMK
YXMgd2VyZSBtYWRlIHRvIGsxLWJhbmFuYXBpLWYzLmR0cy4KSSBubyBsb25nZXIgaGF2ZSBwcm9i
bGVtcyB3aXRoIE5WTUUgZGV2aWNlcyBsaWtlIEkgZGlkIHdoZW4gSSB0cmllZCB2MyBhbmQgdjQu
CgpUZXN0ZWQtYnk6IEphc29uIE1vbnRsZW9uIDxqbW9udGxlb0ByZWRoYXQuY29tPgoKCi0tIAps
aW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBz
Oi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
