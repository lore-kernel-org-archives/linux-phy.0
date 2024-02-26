Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5F04BC48BF6
	for <linux-phy@archiver.kernel.org>; Mon, 26 Feb 2024 23:45:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=YgEEEisL6SXlkM6PvqcP23GrvoH1kGiZM+lYnEguH8k=; b=BJ02TKV827+U9b
	0njyRrdVQ/CKs7DKGxEU/INJSCaVEzHCQpv06D3TxReLiTObz55eL2Ezc1QqJCUT2m3zir80XvQsr
	Hpj8c1uK0lMXU1mLv12T4f6+5z8RSnFXLvIyCWCtIZV4Z7KNogstvn85R/AvPV4iWmgHdv3vy5w28
	ZL+vF+NTuDgvhDiBhD+lys96alZCG7W87XLEa/fTeqhBMCCr8oAWBuKKKM5alZflWb65p6Ni8JrUC
	jz36EqHIW7WwEVLs5EZumr0s90t/A4q1yT6SAvBBDS8G7wIbZhsp/zCe5t5axTevF2qlsYyO2wR54
	YO/PwqqFmDrKvJ5cdcLg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rekfH-0000000309w-3wW5;
	Mon, 26 Feb 2024 23:45:43 +0000
Received: from mail-io1-xd29.google.com ([2607:f8b0:4864:20::d29])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rekfC-0000000308G-2uEr;
	Mon, 26 Feb 2024 23:45:41 +0000
Received: by mail-io1-xd29.google.com with SMTP id ca18e2360f4ac-7c7964d109aso143350039f.2;
        Mon, 26 Feb 2024 15:45:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1708991137; x=1709595937; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=YWIbvre+rElW1Hi4Tns90pWqujeQfsqDKyIvXn+Wd7Y=;
        b=DvGQCNeQXSS/Dl2a51t9WMSfKMCR0TXCCSA7Zx3rvoQrGPaeyCxirA0YJiBso52/e+
         lYu1ElGw7+Z0tAsTPQAi13lglid/LG3toEDBlU93Ix36kH8J1CineYgZdELBj81ghkTs
         FdgWbkZBSgJWznceMp68WWlacO8BaCMTNeCqEr1ZGA8wt8dhbWLWuQbBD/GpWLniY0Un
         DA7Uq04BYzhAW5D+j3L5mSNA5Xq3Kk1F4ffhLYXaRmjrTADZD+ORs4ao3WzJ2NYMXBGi
         c01aKWLyZbMkKVZsu0WA+rLft7oe8Umzby88ZEzp+N+FnOiKGI4p7WlT/GXLMd+UkJ7S
         0A3Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708991137; x=1709595937;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=YWIbvre+rElW1Hi4Tns90pWqujeQfsqDKyIvXn+Wd7Y=;
        b=iq+Zhd1AihYspBImiRcEKptMfm02NKTbi2Mjz6SegGKDfDGn83A2LlUbw1gsFX6s1S
         lS02i/hUAJOkTXZhihzgqu7cZZXq4n9myvsXqo3MNn2IDkEQH1sWyjuzYxxZyY8/t0i3
         00m10DsP/g8/qUyb9ZW9fZZyirfCccNkjAR0oV7/xH3Idh9/aZOFYL0lbhZqgzksnh9J
         6OsF6UcmMZuce1nNnCJZDothF2A7MufBW+mG6IZfJR/ivRB0K5F03pRpglq+iTICOjjh
         YAD20AMdpWplzHnn/TAF3cHzTqVOPLReh3RqeiTTqdu0wNCxR6cqkh8/5k4PoUPRoiWE
         c8qQ==
X-Forwarded-Encrypted: i=1; AJvYcCUP/s+N5rhgR66EY6hYjDq5kSa18uYQffpnKjiaYHx4ODeKwqpKtsPtL/ImYjHFTTCBPvDDmcoJ9jAsVs8XeTQACKSjWWxRYGz9eNWmvA==
X-Gm-Message-State: AOJu0YyQKvN0dedITAHfclW8kv/PnVO7YaPU3qCURpIjVb8QsGHy5UPm
	LgPqOG9+VGBWMtKS9MeSGSZPVwSvxwRkjtXhLtjpAUrC+NrDW8XxaVY7NF9bpqsHBg==
X-Google-Smtp-Source: AGHT+IEFd1YNIU2pFTFYWayiyy5owHCUX8d2oFahEMWR2wOBYQt4gvySx+O01SGAjDhoU7jBjgwbnA==
X-Received: by 2002:a05:6602:1d01:b0:7c7:da5e:3a61 with SMTP id hh1-20020a0566021d0100b007c7da5e3a61mr2215880iob.9.1708991136677;
        Mon, 26 Feb 2024 15:45:36 -0800 (PST)
Received: from aford-System-Version.lan ([2601:447:d002:5be:9c95:d061:819a:2ab2])
        by smtp.gmail.com with ESMTPSA id c25-20020a023319000000b004741cf1e95esm1545317jae.11.2024.02.26.15.45.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 26 Feb 2024 15:45:36 -0800 (PST)
From: Adam Ford <aford173@gmail.com>
To: linux-arm-kernel@lists.infradead.org,
	linux-phy@lists.infradead.org
Cc: aford@beaconembedded.com,
	Adam Ford <aford173@gmail.com>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Shawn Guo <shawnguo@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>,
	Catalin Marinas <catalin.marinas@arm.com>,
	Will Deacon <will@kernel.org>,
	Lucas Stach <l.stach@pengutronix.de>,
	devicetree@vger.kernel.org,
	imx@lists.linux.dev,
	linux-kernel@vger.kernel.org
Subject: [PATCH V6 0/6] soc: imx8mp: Finish support for HDMI
Date: Mon, 26 Feb 2024 17:45:11 -0600
Message-ID: <20240226234532.80114-1-aford173@gmail.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240226_154538_846479_31A90A4F 
X-CRM114-Status: GOOD (  17.85  )
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

CkFkYW0gRm9yZCA8YWZvcmQxNzNAZ21haWwuY29tPgpTYXQsIEZlYiAxNywgMTA6MTbigK9QTSAo
OSBkYXlzIGFnbykKdG8gbGludXgtYXJtLWtlcm5lbCwgbGludXgtcGh5LCBhZm9yZCwgbWUsIFZp
bm9kLCBLaXNob24sIFJvYiwgS3J6eXN6dG9mLCBDb25vciwgU2hhd24sIFNhc2NoYSwgUGVuZ3V0
cm9uaXgsIEZhYmlvLCBOWFAsIENhdGFsaW4sIFdpbGwsIEx1Y2FzLCBkZXZpY2V0cmVlLCBsaW51
eC1rZXJuZWwKClRoZSBpLk1YOE0gUGx1cyBoYXMgYW4gSERNSSBjb250cm9sbGVyLCB3aGljaCBk
ZXBlbmRzIG9uIHNldmVyYWwKb3RoZXIgc3lzdGVtcy4gIFRoZSBQYXJhbGxlbCBWaWRlbyBJbnRl
cmZhY2UgKFBWSSkgYW5kIHRoZQpIRE1JLVRYIGFyZSBhbHJlYWR5IGluIHRoZSBMaW51eC1OZXh0
IHN0YWdpbmcgYXJlYSAyMDI0MDIwOSwgYnV0CnRoZSBIRE1JIFBIWSBkcml2ZXIgYW5kIHNldmVy
YWwgZGV2aWNlIHRyZWVzIHVwZGF0ZXMgYXJlIHN0aWxsIG5lZWRlZC4KClRoaXMgc2VyaWVzIGlz
IGFkYXB0ZWQgZnJvbSBtdWx0aXBsZSBzZXJpZXMgZnJvbSBMdWNhcyBTdGFjaCB3aXRoCmVkaXRz
IGFuZCBzdWdnZXN0aW9ucyBmcm9tIGZlZWRiYWNrIGZyb20gdmFyaW91cyBhdHRlbXBzLCBidXQg
aXQKc2luY2UgaXQncyBkaWZmaWN1bHQgdG8gdXNlIGFuZCB0ZXN0IHRoZW0gaW5kZXBlbmRlbnRs
eSwKSSBtZXJnZWQgdGhlbSBpbnRvIG9uIHVuaWZpZWQgc2VyaWVzLiAgVGhlIHZlcnNpb24gaGlz
dG9yeSBpcyBhCmJpdCBhbWJpZ3VvdXMgc2luY2UgZGlmZmVyZW50IGNvbXBvbmVudHMgd2VyZSBz
dWJtaXR0ZWQgYXQgZGlmZmVyZW50CnRpbWVzIGFuZCBoYWQgZGlmZmVyZW50IGFtb3VudCBvZiBh
dHRlbXB0cy4KClRoZSBwcmV2aW91cyBhdHRlbXB0IEkgZGlkIHVzZWQgdGhlIHdyb25nIHN0YXJ0
aW5nIHBvaW50IGZvciB0aGUgUEhZLApzbyB0aGlzIHVwZGF0ZSBpbmNsdWRlcyBhIG5ld2VyIHN0
YXJ0aW5nIHBvaW50IHdpdGggdGFncyBmcm9tIHRoYXQgdmVyc2lvbgphbmQgZml4ZXMgZnJvbSB2
YXJpb3VzIHBlb3BsZSdzIGZlZWRiYWNrLiAgSSBob3BlIEkgY2F1Z2h0IHRoZW0gYWxsLCBidXQK
SSBhcG9sb2dpemUgaWYgSSBtaXNzZWQgc29tZXRoaW5nLiBBbnkgdGFncyBmcm9tIHRoZSBwcmV2
aW91cyBhdHRlbXB0IEkKbWFkZSB3ZXJlIGludGVudGlvbmFsbHkgZHJvcHBlZCwgYmVjYXVzZSBv
ZiB0aGUgc2lnbmlmaWNhbnQgY2hhbmdlLApidXQgSSBrZXB0IHRhZ3MgZnJvbSB0aGUgbmV3ZXIg
dmVyc2lvbiBJIGdyYWJiZWQgZnJvbSBwYXRjaHdvcmsuCgpCZWNhdXNlIHNldmVyYWwgaXRlbXMg
ZnJvbSB0aGUgbGFzdCBhdHRlbXB0IHdlcmUgbWVyZ2VkLCB0aGlzCnNlcmllcyBpcyBvbmx5IGZv
Y3Vzc2VkIG9uIGFkZGluZyB0aGUgSERNSSBQSFkgZHJpdmVyLCBhbmQgZW5hYmxpbmcKdGhlIHBv
d2VyIGRvbWFpbiwgaXJxc3RlZXIgaW50ZXJydXB0IGNvbnRyb2xsZXIsIGFuZCBIRE1JIHBpcGVs
aW5lCmluIHRoZSBkZXZpY2UgdHJlZS4gVGhlIHZlcnNpb24gbnVtYmVycyBhcmUgYSBiaXQgc3Ry
YW5nZSBzaW5jZQp0aGVzZSBhbGwgZ290IHB1bGxlZCBmcm9tIHZhcmlvdXMgYXR0ZW1wdHMgd2l0
aCBkaWZmZXJlbnQgdmVyc2lvbnMsCmJ1dCBJIHdhbnRlZCB0byBwdXNoIHRoZW0gdG9nZXRoZXIg
YXMgYSBzZXJpZXMgdG8gY29tcGxldGUgdGhlIHBlbmRpbmcKd29yay4KClRoaXMgc2VyaWVzIHJl
c3RhcnRlZCBhdCBWNCBiYXNlZCBvbiB0aGUgdmVyc2lvbiBvZiB0aGUgUEhZIGRyaXZlciBhbmQK
dGhlIG90aGVyIGRyaXZlcnMgYW5kIHBvd2VyLWRvbWFpbiBjaGFuZ2VzIGhhdmUgYmVlbiBhcHBs
aWVkIGFscmVhZHkuCgpWNjogIE1ha2UgdGhlIFBIWSBkcml2ZXIgZGVwZW5kIG9uIENPTU1PTl9D
TEsgdG8gZml4IGJ1aWxkIGVycm9ycwogICAgIE1ha2UgTENESUYzIGRpc2FibGVkIGJ5IGRlZmF1
bHQgc2luY2UgaXQgZGVwZW5kcyBvbiBoYXJkd2FyZS4KClY1IHByaW1hcmlseSB1cGRhdGVzIGZl
ZWRiYWNrIGZyb20gdGhlIFBIWSBkcml2ZXIgaXRzZWxmLCBidXQgYSBzbWFsbAogICBhZGp1c3Rt
ZW50IHdhcyBtYWRlIHRvIHRoZSByZWdpc3RlciBzaXplIGluIHRoZSBkZXZpY2UgdHJlZS4KQWRh
bSBGb3JkICgxKToKICBhcm02NDogZGVmY29uZmlnOiBFbmFibGUgRFJNX0lNWDhNUF9EV19IRE1J
X0JSSURHRSBhcyBtb2R1bGUKICAKICAKCkFkYW0gRm9yZCAoMSk6CiAgYXJtNjQ6IGRlZmNvbmZp
ZzogRW5hYmxlIERSTV9JTVg4TVBfRFdfSERNSV9CUklER0UgYXMgbW9kdWxlCgpMdWNhcyBTdGFj
aCAoNSk6CiAgZHQtYmluZGluZ3M6IHBoeTogYWRkIGJpbmRpbmcgZm9yIHRoZSBpLk1YOE1QIEhE
TUkgUEhZCiAgcGh5OiBmcmVlc2NhbGU6IGFkZCBTYW1zdW5nIEhETUkgUEhZCiAgYXJtNjQ6IGR0
czogaW14OG1wOiBhZGQgSERNSSBwb3dlci1kb21haW5zCiAgYXJtNjQ6IGR0czogaW14OG1wOiBh
ZGQgSERNSSBpcnFzdGVlcgogIGFybTY0OiBkdHM6IGlteDhtcDogYWRkIEhETUkgZGlzcGxheSBw
aXBlbGluZQoKIC4uLi9iaW5kaW5ncy9waHkvZnNsLGlteDhtcC1oZG1pLXBoeS55YW1sICAgICB8
ICA2MiArKwogYXJjaC9hcm02NC9ib290L2R0cy9mcmVlc2NhbGUvaW14OG1wLmR0c2kgICAgIHwg
MTQ2ICsrKysKIGFyY2gvYXJtNjQvY29uZmlncy9kZWZjb25maWcgICAgICAgICAgICAgICAgICB8
ICAgMSArCiBkcml2ZXJzL3BoeS9mcmVlc2NhbGUvS2NvbmZpZyAgICAgICAgICAgICAgICAgfCAg
IDYgKwogZHJpdmVycy9waHkvZnJlZXNjYWxlL01ha2VmaWxlICAgICAgICAgICAgICAgIHwgICAx
ICsKIGRyaXZlcnMvcGh5L2ZyZWVzY2FsZS9waHktZnNsLXNhbXN1bmctaGRtaS5jICB8IDcyMCAr
KysrKysrKysrKysrKysrKysKIDYgZmlsZXMgY2hhbmdlZCwgOTM2IGluc2VydGlvbnMoKykKIGNy
ZWF0ZSBtb2RlIDEwMDY0NCBEb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvcGh5L2Zz
bCxpbXg4bXAtaGRtaS1waHkueWFtbAogY3JlYXRlIG1vZGUgMTAwNjQ0IGRyaXZlcnMvcGh5L2Zy
ZWVzY2FsZS9waHktZnNsLXNhbXN1bmctaGRtaS5jCgotLSAKMi40My4wCgoKLS0gCmxpbnV4LXBo
eSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0
cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
