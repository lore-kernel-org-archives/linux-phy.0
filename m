Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 32EEFD715D5
	for <linux-phy@archiver.kernel.org>; Sat, 24 Jan 2026 06:52:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:Cc:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=u/lwwwCfOCK9EUZ3Coci/kBtvwpbMXNjpWNKpF0wz2w=; b=TuiQbbbDs1hlY2
	0zDcaLTVQmmwUIfpG15+aaza39ZH/InlyQux33tZJXxleAs4If1ewueutDbfiOQqfoPn1Y9ngQ77f
	8nj4spbRLztERC+nl9+p/mwJd3AFRpE6v2peiF6qyzfBb4U+00OflNd5x0MF7vq6VNu25bOb29M5o
	UjNBfZ03CleGKyOfQ+ASp6xQN5NONW2CkHcNevqqOIWF952gbwu8fVXmTwlgvFJqmfdHaxn+0NMFm
	tpUVYFuZQzbuJYnM18rCU486V4HDy7ykNZwoj8FQ0qHc8ms+ODToWaIGmWHpGUA8Fskfy58v1H0ii
	zB95Xf9gziYocNEmh40A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vjXVK-0000000A3BH-2mcb;
	Sat, 24 Jan 2026 06:52:18 +0000
Received: from mail-wm1-x330.google.com ([2a00:1450:4864:20::330])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vjXVG-0000000A3AU-2y4D
	for linux-phy@lists.infradead.org;
	Sat, 24 Jan 2026 06:52:16 +0000
Received: by mail-wm1-x330.google.com with SMTP id 5b1f17b1804b1-47ee937ecf2so24683065e9.0
        for <linux-phy@lists.infradead.org>; Fri, 23 Jan 2026 22:52:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1769237532; x=1769842332; darn=lists.infradead.org;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
         :date:message-id:reply-to;
        bh=KkIWaqEHvViGcgC+2kqW7/inf40Itk/ZRb2srHuSmpo=;
        b=kbisvB4ETfdIvY7hxWkoPDFCCca/19Hcld54dgdNrsCLr4QARwEfo7VMtDxHXCnyay
         ApcGH39Ok0r8RITzlYYKA/YA+dkr9KR/VxvYdjIPag6BFZUo9/NcnboXCvWYU6QfWcR0
         w74WnYY6e/HBq11TuEcb2rtn7QUOCupvjZ932cq4VvqWrfsXtBCEuPDsAvvUBJCKisiB
         S+XbwqhYzanjB6almAyao4FuWg3YTfuJpWNnbxT12+R0qeHKaxcLqvTpVVMQvtTBWq49
         /9nShEJwoZcxA8b/tlhtDQ9oEqCT8dn4BqaWSGFdGCZ8IP4hWhUfrW9zz4wPGfXMDNp/
         vFUw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769237532; x=1769842332;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=KkIWaqEHvViGcgC+2kqW7/inf40Itk/ZRb2srHuSmpo=;
        b=Y//p4dUHSTk4OO8QMdCUAR0mLaeqYYrdpWRxfHif9yCGkFCsKdNCBTj8JHMtS+se6d
         BLSnEBauIHJrfNU3+qYVAmIaBOX/bnlXwbhXbSwfvVzowC54EMctoDJZkrFJCqqbdCrO
         58i5sp2p5Z6BPl3BLbsG5wHNeF37XH0Q6h4FwbNmO/ou4zwLOyDwxMYU3NCQCQgj3d1v
         iFDMSOOSWLF20NTk8h2Eb0Gpdz/Vs+bLnEG17Qdy2iZXP26UfT1CN4EbcsFRwwbFui7Z
         0lFyhGcp4I0jZ2PI6hM5olNG+s+Aq2nUJbXmr27fQU2hxXZTaoMu7DCVfiDt+8x59uwB
         bvUQ==
X-Forwarded-Encrypted: i=1; AJvYcCX+7Yb7Qalco1w+WmVviQaOBRo3MDqmReWUHMfYZgJCDgsadzwapCEgwrFSYpj7O3AUqMgsnCdjOeo=@lists.infradead.org
X-Gm-Message-State: AOJu0YyyVRvpK9fP0XRrbxrjtW4+m+nvwdctlzpqfsLCqQD2cLJqoyYC
	5BJdGE/PQojYQF96rjmmlRmsUKPUWzMwEEo/xUMAJiOyAyEt/JryKAMoH3t19Vmu2+A=
X-Gm-Gg: AZuq6aIMcvi/guVdPHtzTBewWCpf/R/MZXNzORDX7HbDoj+g4ctTFZSXBYb0D4hrvPb
	0nBphWCA6UP/jS33aTQKQ4cPbGYCfM5VYYUS4FFBQ4R/K4srbgRqCfiEw+Y+NLu8soTra0xrvag
	ThFwcWz2cAtpDya77jXz4EG/GL5KXqYT8DCIc1VMRb7i55dCZ42qKEjWtw9o/6YAe8uIALCTr2J
	yj7VN9Uaj++gM1hyOAaUsWNHQkpvp3b/69OoCbRz36TvHs8/5UR6geTx7qI7tiOYHOgjWJyTf5y
	FrmeihJnxxHlrI23g4IuMihlb5IX25JRmtScqKYerTE697fshuj7GGV6cQiJVjqAhcU5Mb71gBl
	/8bg+Qq3V6fq5Kyh4/q3dZPh21rI9tMvN3nb+f4C5FFVFY5FB4B28mNifNDkTW5sVkifTfq7erW
	+bf1E/fthJ8KhHKIDn7A==
X-Received: by 2002:a05:600c:45ca:b0:477:9e0c:f59 with SMTP id 5b1f17b1804b1-4804d2b151emr92947725e9.2.1769237532137;
        Fri, 23 Jan 2026 22:52:12 -0800 (PST)
Received: from draszik.lan ([212.129.87.251])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4804d84588fsm107102385e9.2.2026.01.23.22.52.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 23 Jan 2026 22:52:11 -0800 (PST)
Message-ID: <eebefae5273bccce2d0fcd97afe3ea28bedf27cd.camel@linaro.org>
Subject: Re: [PATCH next] phy: google: fix build dependency for Google
 Tensor USB PHY
From: =?ISO-8859-1?Q?Andr=E9?= Draszik <andre.draszik@linaro.org>
To: Roy Luo <royluo@google.com>
Cc: Vinod Koul <vkoul@kernel.org>, Neil Armstrong
 <neil.armstrong@linaro.org>,  Peter Griffin <peter.griffin@linaro.org>,
 Tudor Ambarus <tudor.ambarus@linaro.org>, Joy Chakraborty	
 <joychakr@google.com>, Naveen Kumar <mnkumar@google.com>, 
	linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org, 
 kernel test robot	 <lkp@intel.com>
Date: Sat, 24 Jan 2026 06:52:14 +0000
In-Reply-To: <CA+zupgwEWM4c9yK1f-Y_Cv5gk=0zYNuUb3kZyZ6O3FDRbPPvKw@mail.gmail.com>
References: <20260121-next-v1-1-c18068b091b9@google.com>
	 <7c78f9da40022e7bbf850ae8989c617bdc30cc95.camel@linaro.org>
	 <CA+zupgw5H5rumo+DxaTfA_=bcvjbBOivm6R+Pw31jgE-sMyEtw@mail.gmail.com>
	 <f956ccd3f5f694de7a634819da3f790a8dce132b.camel@linaro.org>
	 <CA+zupgwEWM4c9yK1f-Y_Cv5gk=0zYNuUb3kZyZ6O3FDRbPPvKw@mail.gmail.com>
User-Agent: Evolution 3.56.2-2+build3 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260123_225214_778616_991DBDFA 
X-CRM114-Status: GOOD (  13.23  )
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

SGkgUm95LAoKT24gRnJpLCAyMDI2LTAxLTIzIGF0IDE1OjUxIC0wODAwLCBSb3kgTHVvIHdyb3Rl
Ogo+IE9uIFRodSwgSmFuIDIyLCAyMDI2IGF0IDEwOjI44oCvUE0gQW5kcsOpIERyYXN6aWsgPGFu
ZHJlLmRyYXN6aWtAbGluYXJvLm9yZz4gd3JvdGU6Cj4gPiAKPiA+IAo+ID4gQ09NUElMRV9URVNU
IGlzIG5vdCBsaW1pdGVkIHRvIEFSQ0hfeHh4LiBJdCBhbGxvd3MgZHJpdmVycyB0byBiZQo+ID4g
Y29tcGlsZSB0ZXN0ZWQgZXZlbiBpZiB0aGUgY3VycmVudCBidWlsZCBkb2Vzbid0IGVuYWJsZSB3
aGF0ZXZlcgo+ID4gb3B0aW9uIChsaWtlIFRZUEVDKS4KPiA+IAo+ID4gU2VlIGFsc28gaHR0cHM6
Ly93d3cua2VybmVsLm9yZy9kb2MvaHRtbC9sYXRlc3Qva2J1aWxkL2tjb25maWctbGFuZ3VhZ2Uu
aHRtbCNjb21waWxlLXRlc3RpbmcKPiAKPiAiSWYgYSBjb25maWcgc3ltYm9sIGhhcyBhIGRlcGVu
ZGVuY3ksIGJ1dCB0aGUgY29kZSBjb250cm9sbGVkIGJ5IHRoZQo+IGNvbmZpZyBzeW1ib2wgY2Fu
IHN0aWxsIGJlIGNvbXBpbGVkIGlmIHRoZSBkZXBlbmRlbmN5IGlzIG5vdCBtZXQiLAo+IFRZUEVD
IGRvZXNuJ3QgZmFsbCBpbnRvIHRoaXMgY2F0ZWdvcnkgYXMgaXQncyBtYW5kYXRvcnkgZm9yIGNv
bXBpbGluZwo+IFBIWV9HT09HTEVfVVNCLgo+IFdpdGggImRlcGVuZHMgb24gVFlQRUMgfHwgQ09N
UElMRV9URVNUIiwgdGhpcyB2ZXJ5IGJ1aWxkIGVycm9yCj4gd291bGQgcmVzdXJmYWNlIHdoZW4g
VFlQRUM9biwgQ09NUElMRV9URVNUPXkgYW5kCj4gUEhZX0dPT0dMRV9VU0I9eS4gUGxlYXNlIGxl
dCBtZSBrbm93IGlmIEkgbWlzc2VkIGFueXRoaW5nLgoKTm8gaXQgd291bGRuJ3QuIElmIHlvdSBs
b29rIGF0IHRoZSBidWlsZCBsb2cgJiAuY29uZmlnIGZyb20gdGhlIHJlcG9ydGVkwqAKZmFpbHVy
ZSwgdGhlIGVycm9yIHdhcyBiZWNhdXNlOgoKQ09ORklHX1BIWV9HT09HTEVfVVNCPXkKQ09ORklH
X1RZUEVDPW0KCmJ1aWx0LWluIGNvZGUgY2FuIG5vdCBsaW5rIGFnYWluc3QgY29kZSBmcm9tIGEg
bW9kdWxlLgoKVGhlIHR5cGVjIEFQSXMgYXJlIGFsbCBzdHViYmVkIG91dCB3aGVuIFRZUEVDPW4u
CgpDaGVlcnMsCkFuZHJlJwoKCgo+IAo+IFRoYW5rcywKPiBSb3kKPiAKPiA+IAo+ID4gQ2hlZXJz
LAo+ID4gQW5kcmUnCj4gPiAKPiA+IAo+ID4gPiAKPiA+ID4gWzFdIGh0dHBzOi8vbG9yZS5rZXJu
ZWwub3JnL2FsbC9DQSt6dXBnd2dmS3dQWXFqOEcydE5mNHBFWE5FV0ErdkwyV1lKUGhKMTZ4RXhn
a283RHdAbWFpbC5nbWFpbC5jb20vCj4gPiA+IAo+ID4gPiBSZWdhcmRzLAo+ID4gPiBSb3kKCi0t
IApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0
dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
