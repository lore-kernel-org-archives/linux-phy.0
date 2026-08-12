Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 24057C5B56A
	for <linux-phy@archiver.kernel.org>; Wed, 12 Aug 2026 13:49:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=M7u1X8cqky5lK6jKtfKYnJ+Vy9A+quZU4pNXyyGAUeo=; b=1tH4Fn3lur7UrB
	HKXQ7IEaHd9tVZHuuPTor7QU8lf/FPlrEJHxFhHjA/hjwJfy0qKV58uL6dYMHP3PXt9qw0GBEveik
	fIRgqPK7lUB80KLihwrXrv4mNd7Awn8+BmvFeSQtEP2+foooswnzncBDahnLv+5OcmwiZFDvdXzsT
	jVv0tbh4Mf6iKtSArmADyu3guoFvL8iOkN6hJCNXjLjjoKuiDSWnH3sSLQKnEx7CaZ19ZVXL7l5nA
	8XXRKOlLiErJv7ev8ZfoQ7HKGx7n9X4hnZOt4nXgfb99416u7eeucLhyS+PVcC0inb4LyDeg1gkO3
	Vh//rshg1s6zlG3iSWrg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wu9Ki-0000000GKAa-21ii;
	Wed, 12 Aug 2026 13:49:28 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wu9Kg-0000000GKA4-2moT
	for linux-phy@lists.infradead.org;
	Wed, 12 Aug 2026 13:49:26 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 1FDF361834;
	Wed, 12 Aug 2026 13:49:26 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7C4031F000E9;
	Wed, 12 Aug 2026 13:49:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1786542565;
	bh=qc+tb2kaon6pC/BAOxE+EancW/8TIBH5x8KL5DrAOxI=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=M42KjWXppc5FA5jAlhRDCRmloZrfvkNRW2PUXI1NsK3qxIYeGF4ioj7gS4fU/Rmp4
	 XDCl9p7ksaknk4O6w9/5hrb9X50u5Zcx9SCVElwKRHDyDuwL990TG5wvEhrmkLeIoJ
	 G0mPkEtbu743dgNbhDiyWENcS/aE4rgmgPHoa9JikMTzUfXeV9moisNiI/Uz0E6/Hi
	 rg4gllAK6QSV9yBJZiU56/iHPy5fhGINln5CZGR1jMAOqslqKg3X51XzpJtN2MjJCZ
	 OLY2kA38W9cU2e1Sfjb4ub/e+BSs6pnjDhvWE6ciQicRRp2Riywb39A/82eq3SoWQR
	 Wkq74mQXoeKig==
Date: Wed, 12 Aug 2026 15:49:15 +0200
From: Manivannan Sadhasivam <mani@kernel.org>
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: Rob Clark <robin.clark@oss.qualcomm.com>, 
	Dmitry Baryshkov <lumag@kernel.org>, Abhinav Kumar <abhinav.kumar@linux.dev>, 
	Jessica Zhang <jesszhan0024@gmail.com>, Sean Paul <sean@poorly.run>, 
	Marijn Suijten <marijn.suijten@somainline.org>, David Airlie <airlied@gmail.com>, 
	Simona Vetter <simona@ffwll.ch>, Vinod Koul <vkoul@kernel.org>, 
	Neil Armstrong <neil.armstrong@linaro.org>, linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org, 
	dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org, linux-phy@lists.infradead.org, 
	Dmitry Baryshkov <dmitry.baryshkov@linaro.org>, Konrad Dybcio <konradybcio@kernel.org>
Subject: Re: [PATCH v9 1/5] drm/msm/hdmi: switch to generic PHY subsystem
Message-ID: <cph2vu2rgbddshnhfdxws46lkh6gktycd7ppzvcbwdxhsyjnxg@igv3jsg3qi77>
References: <20260513-fd-hdmi-phy-v9-0-ca98c72f1f9f@oss.qualcomm.com>
 <20260513-fd-hdmi-phy-v9-1-ca98c72f1f9f@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260513-fd-hdmi-phy-v9-1-ca98c72f1f9f@oss.qualcomm.com>
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

T24gV2VkLCBNYXkgMTMsIDIwMjYgYXQgMDk6MTQ6MDRQTSArMDMwMCwgRG1pdHJ5IEJhcnlzaGtv
diB3cm90ZToKPiBGcm9tOiBEbWl0cnkgQmFyeXNoa292IDxkbWl0cnkuYmFyeXNoa292QGxpbmFy
by5vcmc+Cj4gCj4gQ2hhbmdlIHRoZSBNU00gSERNSSBkcml2ZXIgdG8gdXNlIGdlbmVyaWMgUEhZ
IHN1YnN5c3RlbS4gTW92aW5nIFBIWQo+IGRyaXZlcnMgYWxsb3dzIGJldHRlciBjb2RlIHNoYXJp
bmcgd2l0aCB0aGUgcmVzdCBvZiB0aGUgUEhZIHN5c3RlbS4KPiAKPiBTaWduZWQtb2ZmLWJ5OiBE
bWl0cnkgQmFyeXNoa292IDxkbWl0cnkuYmFyeXNoa292QGxpbmFyby5vcmc+Cj4gQWNrZWQtYnk6
IEtvbnJhZCBEeWJjaW8gPGtvbnJhZC5keWJjaW9AbGluYXJvLm9yZz4KPiBTaWduZWQtb2ZmLWJ5
OiBEbWl0cnkgQmFyeXNoa292IDxkbWl0cnkuYmFyeXNoa292QG9zcy5xdWFsY29tbS5jb20+CgpU
aGlzIGNoYW5nZSBpdCB0b28gYmlnIHRvIGRpZ2VzdCwgYnV0IEkgZG9uJ3Qgc3BvdCBhbnkgbWFq
b3IgaXNzdWUuIFNvLAoKUmV2aWV3ZWQtYnk6IE1hbml2YW5uYW4gU2FkaGFzaXZhbSA8bWFuaXZh
bm5hbi5zYWRoYXNpdmFtQG9zcy5xdWFsY29tbS5jb20+CgotIE1hbmkKCi0tIArgrq7grqPgrr/g
rrXgrqPgr43grqPgrqngr40g4K6a4K6k4K6+4K6a4K6/4K614K6u4K+NCgotLSAKbGludXgtcGh5
IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3Rz
LmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
