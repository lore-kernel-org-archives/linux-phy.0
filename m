Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 543B4C982D8
	for <linux-phy@archiver.kernel.org>; Sat, 19 Sep 2026 05:49:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=negdK6wS3+hIk3TfqWXsSdWeTNA0gAPmNJRtaEfs8qg=; b=KNCpHQzZhNxZTM
	lVoWKrtY6Nzxhc7594E+dWS7kOIhEduPOQSHn9KyJmZhmahIvGznS9oI6EFqAK8rEC3Atsgrvdffw
	csR+9rsK3m/3E+VMr7CIcmb4eZNj9s2bRN+jfHITmm5lTvcT9oUCghR1rRmQIWivnDj53KdlXE569
	BX7RM6PWPGSElvRBVmLPHEnhNvsnvhrHF+6LOIIDF8slfI3rzq+fBALi3F9W+bAI9Vkqqe8ljhE/T
	UQ3OJZq/wYT4BlMG8eoXU4FESo4wft7ygCNxj2XZ/GkhF8x2oXUizrVOFP7ZZavcMKFhhm6jRpcDr
	cIVV/gijLzYVn4pEsuZw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x7nxF-0000000FyHa-16pP;
	Sat, 19 Sep 2026 05:49:41 +0000
Received: from mail-pj2-x10.google.com ([2607:f8b0:4864:39::10])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x7nxC-0000000FyGr-0mMN
	for linux-phy@lists.infradead.org;
	Sat, 19 Sep 2026 05:49:39 +0000
Received: by mail-pj2-x10.google.com with SMTP id 98e67ed59e1d1-396ccda24a3so1162983a91.0
        for <linux-phy@lists.infradead.org>; Fri, 18 Sep 2026 22:49:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1789796977; x=1790401777; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=hJw+LFtPFh6SoU2BWDHxw9/YHsXZDhQ0lOnE3Vh/h6c=;
        b=NseFanHp/cpwJ2a7+A7lqaBIhYbyitqds9i/7+0yziUMwbWF3eqC0k4DejJC7qiNAc
         UQvRCeAPFtxmr5nnMU2TksE8m6VEbeXZFt2Jlx7LCjd0e1Yb0pR/euxIAhan+L+wiHCO
         RD4lhRgfeBhrDH1iwLyoyATGWlvaszdzTGYaML5pw8rdUf842j2Z9Sr/Y63m2ya3CV2Z
         arirflcx/r1wLLjNrfRMLXGYYpWO0RLmCoSbVrEcio5eni2awoIr29J5fN4WtEHB/rgN
         EadQuE2kuzo+UF1vX9IkAxjRJNTsVe72S0sycsfCSetuq1N+BC1qgL0pB0ZxAUbrOFnD
         igaQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1789796977; x=1790401777;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=hJw+LFtPFh6SoU2BWDHxw9/YHsXZDhQ0lOnE3Vh/h6c=;
        b=NZAHBg8H5kEf/avwJTet244jzc1o3H8X3VS2syhduygD9yh3KNnxNFchwaU9AFJ5qA
         DEWT1WfQHfvcO4QxQht5ZHT4fPLywshbbLAmffDFa10CSlN/Yy08XVbxazX3JJ/8Bn9C
         sAGo4mxpyoqnkUCUSMVH88a2oaIA8/Zm+g0DqNuPMFWnUMUM1LTCqycIb0gtEdfSW5Sq
         W8++3Lh3XqHtAL1qB7BztFY5StVIz4FnECqiYTDlXRVX763s75yKMBhEl1KYFrKJN4Q8
         cxo8RASSARlgbnmZuca4JqzLDxWGez6T0XE3sAk7dJhj+aeujA9gEQT6AXonau+YFWe3
         cRAw==
X-Forwarded-Encrypted: i=1; AKwUvByPoSBFbien/Fe8Pi8wlcugZo1LC1VoAks4Bubwrd/jsr45tyNGJlzxm0ttlzSEVE1+YZEZlK2+4UQ=@lists.infradead.org
X-Gm-Message-State: AFuF++lEH7Rzx++TiGfudtChWCh6ScP5PHRnWp7wVG9WQR8bHF3l728W
	YuOPVtUEdohE2GZhXZRgIbfOB4mJr0VjPEfB2lv8aS/klIav8Qq9cPSqK3HYYg==
X-Gm-Gg: AYBFou2zwwl0OlJjhW06BrtyoOfINBwgbDG0CG10w2CsponhaQmZh1AEgym6bjlgRqp
	FZIwSWeSC22/3eDaAMiTSqn9LUlNgQDQuozSz+petkoLqAM1mDmLOSOgfG+UJvCYBvuHr+k9IUJ
	Se9JsfNiTyi4ZuT59v5WjIQVT9/ImJwD79UgA/ib3itAQh1S0pYkqkTOzNAGaBh80cUsOt4mDa+
	UdWG1SaKuwXtCV0Po7bzWIoUv0xnJhAH1Uk2K6PBUUInQSWxBVD/w5pOxHFS7b37xhZsTVEdTSM
	/4+5mxkh2glE9v2WQeVZKRKDDIpXFFSBQBaHnGmqez5T6A08tJjHo0inl2cNS5plNlg7ZcyG7Po
	mOPYSxKNexB/33dZ0/q2tNIp/EqT1ZrgvBXFJANBcL8utZTX3pZf41IYQxULyS/HkUjIBkV9Unh
	CYSJzmXDEucRlgZ/dBPSDx++Tqj4SZpraKZPEOGNyt2MWvlGerNqSdHOLFlFUf/642dy9VAARVz
	I1cfJyzaJBWWRUw5EZJR/0PKQtSfhLgKqq059jJuIj5RJmmnSNB3Eg=
X-Received: by 2002:a17:90b:3bcb:b0:38e:bbf1:de3f with SMTP id 98e67ed59e1d1-39e54eab3e6mr15914399a91.12.1789796977038;
        Fri, 18 Sep 2026 22:49:37 -0700 (PDT)
Received: from [172.19.1.47] (60-250-196-139.hinet-ip.hinet.net. [60.250.196.139])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-39e6cb400c3sm2791939a91.17.2026.09.18.22.49.33
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 18 Sep 2026 22:49:36 -0700 (PDT)
Message-ID: <2d07e535-3029-41d0-9dcf-8772f7330434@gmail.com>
Date: Sat, 19 Sep 2026 13:49:31 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5 2/3] arm64: dts: nuvoton: ma35d1: add USB controllers
 and dual-port PHY node
To: Joey Lu <a0987203069@gmail.com>, Vinod Koul <vkoul@kernel.org>,
 Neil Armstrong <neil.armstrong@linaro.org>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Arnd Bergmann <arnd@arndb.de>,
 Catalin Marinas <catalin.marinas@arm.com>, Jacky Huang
 <ychuang3@nuvoton.com>, Shan-Chun Hung <schung@nuvoton.com>,
 Hui-Ping Chen <hpchen0nvt@gmail.com>, Joey Lu <yclu4@nuvoton.com>,
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20260914031859.385224-1-a0987203069@gmail.com>
 <20260914031859.385224-3-a0987203069@gmail.com>
Content-Language: en-US
From: Jacky Huang <ychuang570808@gmail.com>
In-Reply-To: <20260914031859.385224-3-a0987203069@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260918_224938_253232_98E78B54 
X-CRM114-Status: GOOD (  14.87  )
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

PiBBZGQgdGhlIFVTQiBzdWJzeXN0ZW0gbm9kZXMgZm9yIHRoZSBNQTM1RDEgU29DIGFuZCBib2Fy
ZHM6Cj4KPiAgICAtIHVzYl9waHk6IHN0YW5kYWxvbmUgUEhZIG5vZGUgd2l0aCAjcGh5LWNlbGxz
ID0gPDE+LCBjb3ZlcmluZyBib3RoCj4gICAgICB0aGUgT1RHIHBvcnQgKFBIWTAsIGluZGV4IDAp
IGFuZCB0aGUgaG9zdC1vbmx5IHBvcnQgKFBIWTEsIGluZGV4IDEpLgo+ICAgICAgVXNlcyBudXZv
dG9uLHN5cyBwaGFuZGxlIGFuZCBIVVNCSDBfR0FURSBjbG9jayBwZXIgdGhlIGJpbmRpbmcuCj4K
PiAgICAtIHVzYiAoRFdDMiBnYWRnZXQsIFVTQjApOiBwaHlzID0gPCZ1c2JfcGh5IDA+LCBkcl9t
b2RlID0gcGVyaXBoZXJhbC4KPiAgICAtIGVoY2kwL29oY2kwIChVU0IwIGhvc3QpOiBwaHlzID0g
PCZ1c2JfcGh5IDA+LCBjb21wYW5pb24gcGFpcmluZy4KPiAgICAtIGVoY2kxL29oY2kxIChVU0Ix
IGhvc3QpOiBwaHlzID0gPCZ1c2JfcGh5IDE+Lgo+Cj4gQm9hcmQgZmlsZXMgKG1hMzVkMS1zb20t
MjU2bS5kdHMsIG1hMzVkMS1pb3QtNTEybS5kdHMpIGFkZCBwaW5jdHJsIGZvcgo+IFZCVVNWTEQs
IFBXUkVOIGFuZCBPVkMgc2lnbmFscyBhbmQgZW5hYmxlIGFsbCBVU0Igbm9kZXMuCj4KPiBTaWdu
ZWQtb2ZmLWJ5OiBKb2V5IEx1IDxhMDk4NzIwMzA2OUBnbWFpbC5jb20+Cj4gLS0tCj4gICAuLi4v
Ym9vdC9kdHMvbnV2b3Rvbi9tYTM1ZDEtaW90LTUxMm0uZHRzICAgICAgfCAzNiArKysrKysrKysr
Cj4gICAuLi4vYm9vdC9kdHMvbnV2b3Rvbi9tYTM1ZDEtc29tLTI1Nm0uZHRzICAgICAgfCAzNiAr
KysrKysrKysrCj4gICBhcmNoL2FybTY0L2Jvb3QvZHRzL251dm90b24vbWEzNWQxLmR0c2kgICAg
ICAgfCA2NSArKysrKysrKysrKysrKysrKysrCj4gICAzIGZpbGVzIGNoYW5nZWQsIDEzNyBpbnNl
cnRpb25zKCspCj4KPiBkaWZmIC0tZ2l0IGEvYXJjaC9hcm02NC9ib290L2R0cy9udXZvdG9uL21h
MzVkMS1pb3QtNTEybS5kdHMgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL251dm90b24vbWEzNWQxLWlv
dC01MTJtLmR0cwo+IGluZGV4IDc4NTM0ZDYxMzQ4Ni4uMGEwNjhhYmRhNmUwIDEwMDY0NAo+IC0t
LSBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvbnV2b3Rvbi9tYTM1ZDEtaW90LTUxMm0uZHRzCj4gKysr
IGIvYXJjaC9hcm02NC9ib290L2R0cy9udXZvdG9uL21hMzVkMS1pb3QtNTEybS5kdHMKPiBAQCAt
OTcsNiArOTcsMTYgQEAgcGluY3RybF91YXJ0MTQ6IHVhcnQxNC1waW5zIHsKPiAgICAgICAgICAg
ICAgICAgICAgICAgICAgcG93ZXItc291cmNlID0gPDE+Owo+ICAgICAgICAgICAgICAgICAgfTsK
PiAgICAgICAgICB9Owo+ICsKPiArICAgICAgIGhzdXNiIHsKPiArICAgICAgICAgICAgICAgcGlu
Y3RybF9oc3VzYjogaHN1c2ItcGlucyB7Cj4gKyAgICAgICAgICAgICAgICAgICAgICAgbnV2b3Rv
bixwaW5zID0gPDUgMTUgMT4sIC8qIFZCVVNWTEQgKi8KPiArICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICA8MTEgMTIgOT4sIC8qIFBXUkVOICovCj4gKyAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgPDExIDEzIDk+OyAvKiBPVkMgKi8KPiArICAgICAgICAg
ICAgICAgICAgICAgICBiaWFzLWRpc2FibGU7Cj4gKyAgICAgICAgICAgICAgICAgICAgICAgcG93
ZXItc291cmNlID0gPDE+Owo+ICsgICAgICAgICAgICAgICB9Owo+ICsgICAgICAgfTsKPiAgIH07
Cj4KClRoZSBvdXRlciBwaW5jdHJsIGdyb3VwIG5vZGUgbmFtZSBkb2VzIG5vdCBtYXRjaCB0aGUg
TUEzNUQxIHBpbmN0cmwgCmJpbmRpbmcuIGR0LXZhbGlkYXRlIHJlcG9ydHM6CgogwqAgJ2hzdXNi
JyBkb2VzIG5vdCBtYXRjaCBhbnkgb2YgdGhlIHJlZ2V4ZXM6ICctZ3JwJCcsCiDCoCAnXmdwaW9A
WzAtOWEtZl0rJCcsICdecGluY3RybC1bMC05XSskJwoKUGxlYXNlIHJlbmFtZSBpdCB0byAiaHN1
c2ItZ3JwIiBpbiBib3RoIG1hMzVkMS1pb3QtNTEybS5kdHMgYW5kIAptYTM1ZDEtc29tLTI1Nm0u
ZHRzLgoKSSB0ZXN0ZWQgdGhpcyBjaGFuZ2UgbG9jYWxseS4gQm90aCBhZmZlY3RlZCBEVEJzIGJ1
aWxkIGFuZCB2YWxpZGF0ZSAKY2xlYW5seSBhZnRlciB0aGUgcmVuYW1lLgoKCkJlc3QgcmVnYXJk
cywKSmFja3kgSHVhbmcKCgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlz
dHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0
aW5mby9saW51eC1waHkK
