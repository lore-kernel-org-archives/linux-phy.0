Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D28DCC44500
	for <linux-phy@archiver.kernel.org>; Thu, 22 Jan 2026 10:39:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:Cc:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8r26Uy1dffn8w3TRMbCZCXSqKQM+eleXBQWxhragZ9A=; b=v4waeBq04eGNPI
	xJ8j3Q5hAtth6A/ZnBUHESvc2Xbg3IoLvwS0tJxuYe/mcVMXdqWI/simdddKYacmVmqaVCI+t0fsZ
	yBis2f+3s920W3M6W7mIFg9FVc9LXfkQIfdGLAoUynY3Yv7+EgnwqRvqrOfszNs/R9aUNYx7/tF7w
	Y9FGMGHRhySEvNeuBnahh54QFVb5k7qO3t6HxteiFOQ/5nLWKGjAtzWyW+rUKH1q9g6vlYF+aVxJa
	D/DOrv1b9uj8CrV0+5f76ZswphakuUWq/LSo+z4nrGn0Qy6yU4YvxpLwgfL79TJ7s++eWAZevz5Yg
	XSPcAL8hPk1+guUGcxkA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vis5j-00000006rBC-1ppi;
	Thu, 22 Jan 2026 10:39:07 +0000
Received: from mail-wr1-x434.google.com ([2a00:1450:4864:20::434])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vis5g-00000006rA9-3aY7
	for linux-phy@lists.infradead.org;
	Thu, 22 Jan 2026 10:39:06 +0000
Received: by mail-wr1-x434.google.com with SMTP id ffacd0b85a97d-42fb0fc5aa9so523212f8f.1
        for <linux-phy@lists.infradead.org>; Thu, 22 Jan 2026 02:39:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1769078342; x=1769683142; darn=lists.infradead.org;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
         :date:message-id:reply-to;
        bh=knv3eV/uPl+lWimlwaG5qjUbDF4tZn6R2q3+oaVVNBg=;
        b=w/YY+g6XDdRBv687BadBbuMh5URLWN+asZa3asE0DBK+reSs4o91acyaYTQZ1E83g9
         FmDpHA+pHdXIC1y/s1O3CTsUpYmNcR0LPiZkTRYYfzrame8FTdCJDwPX0yaM9m5oxJ6E
         n2wD0/YdiNRc06cM6ooMzacNSBD7ew8PpacMtWIc6DLz3FvTqgoxWiyzMGoofzyedo3S
         gYSljxJdlIn/oBKRVl10WZs8zlmxQ4HFLjWOU8ifUQZ4FA2IH3ylyYJJEXRBeOx3Rj79
         tLUWbDW34UqHbUv5EYiXu2eQKKSV3rAQVid5y8uj9WjCy6mxFwZz/eodxm2VYCPAHMlT
         +9Hw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769078342; x=1769683142;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=knv3eV/uPl+lWimlwaG5qjUbDF4tZn6R2q3+oaVVNBg=;
        b=RcklQUMJjzavc1ui3BJDBz5+0MNP5vw3nzPWTxV5JNLZdTXUY1ykShHDrNrkoI6PC6
         /wH3wpTJsw3dfNqANdk7k7mQHa065bYdLWWIan2bRo7ny0Wb5ce2tjocIkYL3dVClBgH
         YPilWSSVvFRI8Y3n/MFWF2tzQmCsdvEJhdnXrz3PUxONk2/sOAxPqHfOayJeAzJUussB
         BF+yj7fx6JqWg/Cb/PAYWLCcTL17fpczWICzhxZuvtR9r0bnoLFm0XUmiHLsN2liFa7c
         vGABeoT7/fk1mcXDSaoaUIYFKBKbBcoxQcwhFgfryw5UuUVn2NCz5trsutC0wKAXP1bg
         aV6g==
X-Gm-Message-State: AOJu0YwMgdLuQuHpSY94kgAl7dFFaOK87wc2637Ki4X1vKQwbeH6VNMu
	PJAIPvJeh/bWXqU+tco0m+TStSMAY/iWoRbdqz6R/HMjATZIvabAX1bXZbjwCJmkjh4=
X-Gm-Gg: AZuq6aJUfKshin6GJezvy6h787wICu8CpljXQQyjdofRi+TPIbeNbdLPSTPbHtJdvXb
	GWRI4z8Rm7ymUpdvRG4NPCBy1gk6S1K9BlpKlRKYGJ7pn9C5u5N2pLsISbX764uRpjZjTwW54f8
	E5abR9vv38Eli/qDZqNRvm15qcWP/AYB21qBPT3WvPd+v4MsJw3IF86EV9IkwozChpKql9IIZ/+
	jD88XHSelLphU50RmOVCLkKDQsPtOVzoyzqiCcJpu4tsLvJ8xp0LpLdcvv5rXSTOHC9Y1JiCz90
	f+tiJjvxZaFcWrGQfNTa5cwVST2RZ54kkqC2+jybUoAcdtLhWg4VhSKOxm22yp5LiVusm+o/aCD
	aw3Malz9+CzK8OIhS+0qdAsBR+9/HA9mC5+F+M/Eeya7OTj9eekZ1o96I4tR3t3NzhXolvBHN6j
	nxCLHG4FyZRs28EFmFIA==
X-Received: by 2002:a05:6000:ece:b0:435:a7fa:24ae with SMTP id ffacd0b85a97d-435a7fa2607mr2707643f8f.18.1769078342064;
        Thu, 22 Jan 2026 02:39:02 -0800 (PST)
Received: from draszik.lan ([212.129.87.109])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-4356997e6cdsm45475978f8f.31.2026.01.22.02.39.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 22 Jan 2026 02:39:01 -0800 (PST)
Message-ID: <7c78f9da40022e7bbf850ae8989c617bdc30cc95.camel@linaro.org>
Subject: Re: [PATCH next] phy: google: fix build dependency for Google
 Tensor USB PHY
From: =?ISO-8859-1?Q?Andr=E9?= Draszik <andre.draszik@linaro.org>
To: Roy Luo <royluo@google.com>, Vinod Koul <vkoul@kernel.org>, Neil
 Armstrong	 <neil.armstrong@linaro.org>, Peter Griffin
 <peter.griffin@linaro.org>, Tudor Ambarus <tudor.ambarus@linaro.org>, Joy
 Chakraborty <joychakr@google.com>, Naveen Kumar	 <mnkumar@google.com>
Cc: linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org, 
 kernel test robot
	 <lkp@intel.com>
Date: Thu, 22 Jan 2026 10:39:01 +0000
In-Reply-To: <20260121-next-v1-1-c18068b091b9@google.com>
References: <20260121-next-v1-1-c18068b091b9@google.com>
User-Agent: Evolution 3.56.2-2+build3 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260122_023904_902612_C35CAFCA 
X-CRM114-Status: GOOD (  13.26  )
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

SGkgUm95LAoKT24gV2VkLCAyMDI2LTAxLTIxIGF0IDIyOjIxICswMDAwLCBSb3kgTHVvIHdyb3Rl
Ogo+IFRoZSBHb29nbGUgVGVuc29yIFVTQiBQSFkgZHJpdmVyIHVzZXMgdGhlIFR5cGUtQyBzd2l0
Y2ggZnJhbWV3b3JrIHRvCj4gaGFuZGxlIG9yaWVudGF0aW9uIGNoYW5nZXMuIEhvd2V2ZXIsIHRo
ZSBLY29uZmlnIGRpZCBub3Qgc3BlY2lmeSBhCj4gZGVwZW5kZW5jeSBvbiB0aGUgVFlQRUMgZnJh
bWV3b3JrLCBsZWFkaW5nIHRvIHVuZGVmaW5lZCByZWZlcmVuY2UKPiBlcnJvcnMgd2hlbiBidWls
ZGluZyBmb3IgYXJjaGl0ZWN0dXJlcyBvciBjb25maWd1cmF0aW9ucyB3aGVyZQo+IENPTkZJR19U
WVBFQyBpcyBkaXNhYmxlZCBvciBjb25maWd1cmVkIGFzIGEgbW9kdWxlLgo+IAo+IEFkZCAnZGVw
ZW5kcyBvbiBUWVBFQycgdG8gdGhlIFBIWV9HT09HTEVfVVNCIGVudHJ5IHRvIGVuc3VyZSBhbGwK
PiByZXF1aXJlZCBzeW1ib2xzIGFyZSBhdmFpbGFibGUgZHVyaW5nIGxpbmtpbmcuCj4gCj4gRml4
ZXM6IGNiY2U2NjY2OWM4MiAoInBoeTogQWRkIEdvb2dsZSBUZW5zb3IgU29DIFVTQiBQSFkgZHJp
dmVyIikKPiBSZXBvcnRlZC1ieToga2VybmVsIHRlc3Qgcm9ib3QgPGxrcEBpbnRlbC5jb20+Cj4g
Q2xvc2VzOiBodHRwczovL2xvcmUua2VybmVsLm9yZy9vZS1rYnVpbGQtYWxsLzIwMjYwMTIxMDgy
NS5FTHJwUWVFRC1sa3BAaW50ZWwuY29tLwo+IFNpZ25lZC1vZmYtYnk6IFJveSBMdW8gPHJveWx1
b0Bnb29nbGUuY29tPgo+IC0tLQo+IMKgZHJpdmVycy9waHkvS2NvbmZpZyB8IDEgKwo+IMKgMSBm
aWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspCj4gCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvcGh5
L0tjb25maWcgYi9kcml2ZXJzL3BoeS9LY29uZmlnCj4gaW5kZXggMTQyZTdiMGVmMmVmYjkyMDk3
ODE4MDBlZTQ3YjgyMGE5MWIxMTVhZS4uNTUzMWZmMzFkODE1NmNiMTY0YzMyZTNlNTJkNGE1N2Iy
NmE2MmQ4ZCAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL3BoeS9LY29uZmlnCj4gKysrIGIvZHJpdmVy
cy9waHkvS2NvbmZpZwo+IEBAIC00OSw2ICs0OSw3IEBAIGNvbmZpZyBHRU5FUklDX1BIWV9NSVBJ
X0RQSFkKPiDCoAo+IMKgY29uZmlnIFBIWV9HT09HTEVfVVNCCj4gwqAgdHJpc3RhdGUgIkdvb2ds
ZSBUZW5zb3IgU29DIFVTQiBQSFkgZHJpdmVyIgo+ICsgZGVwZW5kcyBvbiBUWVBFQwoKQ2FuIHlv
dSBtYWtlIHRoaXMKCmRlcGVuZHMgb24gVFlQRUMgfHwgQ09NUElMRV9URVNUCgp0byBhbGxvdyBz
b21lIGJldHRlciB0ZXN0IGNvdmVyYWdlPwoKQ2hlZXJzLApBbmRyZQoKLS0gCmxpbnV4LXBoeSBt
YWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5p
bmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
