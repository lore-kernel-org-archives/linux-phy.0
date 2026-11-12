Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4EE1A606A894
	for <linux-phy@archiver.kernel.org>; Thu, 12 Nov 2026 10:39:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=H8R7mZk8;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20260515 header.b=leoUnOsz
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=uKW0LNdOhswzWYhygxraC0INIYzZr1kOvNGh0M2T8vE=; b=H8R7mZk8dcF7r9j3vgUydvbrJR
	3HPnwtUthR5aXDNe+GSR5zXhDfGSKknoBK6by+K4FvFhN1Lq72iFMLvgt4mwJouQAdfRU/idAJpbM
	e+EC+RYXnWmhnZ6/ZdO3LxRtn2wWOdPCT39GdVef3pmFLa6j1A7LdlfH30EqVf5zkHNbO2k5Fgnr1
	A6VhFW+FY6kt0nqzEop/KfJmJtSANzzXBNfOOmUtN6rsJdM/FkTJ9AViB+RB3GbhiK2bvd1+GK016
	+1C/Sp4+Nyc3wRWvgOeYGW/Nm60sEmFHsBanyatkibZ3Uf0+afk9mcaUWkllSnE/JGR5BhaFVhDmO
	7kTDFtjg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xRSDK-00000009YWZ-3kiS;
	Thu, 12 Nov 2026 10:39:30 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xRSDJ-00000009YUc-2pif
	for linux-phy@lists.infradead.org;
	Thu, 12 Nov 2026 10:39:29 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id F12A841499;
	Thu, 12 Nov 2026 10:39:28 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1ECE71F00A06;
	Thu, 12 Nov 2026 10:39:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1794479968;
	bh=jj+KwhjsJ+azPCQ+Sz77HwA7gwWIyWEvUjsiCGUD9u8=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=leoUnOszVpSJqwsR8md0YdWjHXpHl4M2/n9Z08ff7NloH+4Flaa8LxuaBJkUUb7MV
	 YAXJXa3RpJUht1Czmn3VGmFj0izv8qZDERStGMdyRmxcxpxIE9L00dc2Cy+zzLbCSA
	 9d5lb6ZbcOKpybjUIYfm2y+sSXjgqw8Ej9i4TOT1wIjqMNBgg3xYV1UZjLWWVnEc6l
	 Zrz9lLQvECj/6D9kP19PjPfN8JYS/UvnElx7kdxeGEj4CUPl4Ky5BYiejI/cKcpDiE
	 65gp1sB/1Rkc3rDxdtWwofBgLtMQpWtz+AwvVJh32y/QWqMmenrShvlQmGJUiTOnhj
	 gfat2VCLaBybw==
Date: Thu, 12 Nov 2026 16:09:25 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
Cc: Neil Armstrong <neil.armstrong@linaro.org>,
	Manivannan Sadhasivam <mani@kernel.org>,
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
	Manivannan Sadhasivam <manivannan.sadhasivam@oss.qualcomm.com>,
	Abel Vesa <abel.vesa@oss.qualcomm.com>
Subject: Re: [PATCH v2] phy: qualcomm: phy-qcom-eusb2-repeater: Fix SMB Power
 leakage issue
Message-ID: <avWXXVE9WuLUPbn5@parshuram>
References: <20261112-smb-repeater-power-leakage-v2-1-0f8ee55c4962@oss.qualcomm.com>
 <avWB6_hSarfdJV5-@parshuram>
 <dcc4d7a7-6408-48c4-8fd3-af96519fbd72@oss.qualcomm.com>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <dcc4d7a7-6408-48c4-8fd3-af96519fbd72@oss.qualcomm.com>
X-BeenThere: linux-phy@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Linux Phy Mailing list <linux-phy.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-phy/>
List-Post: <mailto:linux-phy@lists.infradead.org>
List-Help: <mailto:linux-phy-request@lists.infradead.org?subject=help>
List-Subscribe: <https://lists.infradead.org/mailman/listinfo/linux-phy>,
 <mailto:linux-phy-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
X-Spam-Status: No, score=-3.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS autolearn=no
	autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

T24gMTItMTEtMjYsIDE0OjQzLCBLcmlzaG5hIEt1cmFwYXRpIHdyb3RlOgoKPiA+IFRoaXMgZmFp
bHMgdG8gYnVpbGQ6Cj4gPiAKPiA+IGRyaXZlcnMvcGh5L3F1YWxjb21tL3BoeS1xY29tLWV1c2Iy
LXJlcGVhdGVyLmM6IEluIGZ1bmN0aW9uIOKAmGV1c2IyX3JlcGVhdGVyX2V4aXTigJk6Cj4gPiBk
cml2ZXJzL3BoeS9xdWFsY29tbS9waHktcWNvbS1ldXNiMi1yZXBlYXRlci5jOjIzMToyNDogZXJy
b3I6IOKAmHN0cnVjdCBldXNiMl9yZXBlYXRlcuKAmSBoYXMgbm8gbWVtYmVyIG5hbWVkIOKAmGJh
c2XigJkKPiA+IAo+IAo+IEhpIFZpbm9kLAo+IAo+ICBXaGVuIFsxXSBnb3QgbWVyZ2VkIGl0IHJl
bW92ZWQgdGhlIGJhc2UgcG9pbnRlci4gSGVuY2UgdjEgb2YgdGhpcyBwYXRjaAo+IGZhaWxzIHdp
dGggZXJyb3Igc2F5aW5nIHRoYXQgYmFzZSBpcyBub3QgcHJlc2VudC4gQnV0IHYyIGhhcyBiZWVu
IHJlYmFzZWQuCj4gVGhpcyB2MSBnaXZlcyB0aGUgaXNzdWUgYnV0IG5vdCB2Mi4gSSBzZWUgdGhh
dCB5b3UgaGF2ZSBhcHBsaWVkIHYxLiBDYW4geW91Cj4gcmV2ZXJ0IHRoYXQgYW5kIHRha2UgaW4g
djIuCkRvbmUKCi0tIAp+Vmlub2QKCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBo
eUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2xpbnV4LXBoeQo=
