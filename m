Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EAC97C48BC3
	for <linux-phy@archiver.kernel.org>; Mon, 19 Feb 2024 17:49:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:Subject:References:Cc:
	To:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AWAjy+z93SDvN50VBoXTdaYyAOSFX9keFrEUvxhElIw=; b=xJhTOkov88iYOs
	yC7lAx8raen+88BxafJPLYM7FeXNt2echZSdmOrIGkY7D8L02G2SOpR9/RxDLd+jwKCOlAAh1pSql
	QYFMeGHaQM3HW82e62PLmF1EN0yS7+iW5lEvgKoWbLMCmi762G4UoXVXSxCei74jcycrMNs+W2pAz
	DnifU7fBeVN41get+DkoSHoZRxwxEn5cFpCAlPOY55GvAlY9GGw36lc9IlHU2zlqJ/RuZBlh+PKHj
	+w+DkUJrM552C98N7wXnxoFSPXeTuzKyQw4/jWga+x4fxcEQG+QZGdmaOJvLVCn9EGiDDAeDFddzI
	Lb2V84N+lKVLpyEg9PeA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rc7lR-0000000BaKn-2elu;
	Mon, 19 Feb 2024 17:49:13 +0000
Received: from mout.web.de ([212.227.15.14])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rc7lO-0000000BaHj-0j2V
	for linux-phy@lists.infradead.org;
	Mon, 19 Feb 2024 17:49:11 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=web.de; s=s29768273;
	t=1708364915; x=1708969715; i=markus.elfring@web.de;
	bh=hPupRt57+r+Pl0dfVnsjq1GsNhHpCJ6eXReICe+eDDo=;
	h=X-UI-Sender-Class:Date:To:Cc:References:Subject:From:
	 In-Reply-To;
	b=h4sRlf5zIV+QWDila5ohfglWmS12NfxX6Wx6NvhudyKq05oHZRWmmvB+yQAl/USd
	 s/hF88fZLogXlVoPr9rYZcV6U1BvLPtgrwOs3I0XIdBFv8XpCNCNY3EEijkJj1DzY
	 5VvHfB+6tRpIy0Tq9+g7oAj5CiRYslmyzxurJVIsHN3Kc9uYA8tBa3N1Mp5L6Y/wr
	 oucP7TurufLy2QMHeMn/SgfhJjg31IVk1/FHtcdSB/Axxv9EWjjleNaSPrJeU4eX5
	 oZ7w/z6ZtPYAINIoef5Lp0bfUVTHb8xQlzM7tiiHXC7yK1h1ujvgMvoDn/CvIgI7W
	 Yu6xFw2F9eBfP/W1YQ==
X-UI-Sender-Class: 814a7b36-bfc1-4dae-8640-3722d8ec6cd6
Received: from [192.168.178.21] ([94.31.80.95]) by smtp.web.de (mrweb005
 [213.165.67.108]) with ESMTPSA (Nemesis) id 1M2xrs-1rfQbv2m5c-003JhM; Mon, 19
 Feb 2024 18:48:35 +0100
Message-ID: <c95f5ff3-8dad-4302-9384-92a9b83f7bdc@web.de>
Date: Mon, 19 Feb 2024 18:48:30 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Johan Hovold <johan+linaro@kernel.org>, freedreno@lists.freedesktop.org,
 dri-devel@lists.freedesktop.org, linux-phy@lists.infradead.org,
 linux-arm-msm@vger.kernel.org, kernel-janitors@vger.kernel.org,
 Andrzej Hajda <andrzej.hajda@intel.com>,
 Bjorn Andersson <andersson@kernel.org>, Daniel Vetter <daniel@ffwll.ch>,
 David Airlie <airlied@gmail.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>,
 Neil Armstrong <neil.armstrong@linaro.org>, Robert Foss <rfoss@kernel.org>,
 Thomas Zimmermann <tzimmermann@suse.de>, Vinod Koul <vkoul@kernel.org>
Cc: LKML <linux-kernel@vger.kernel.org>,
 Abhinav Kumar <quic_abhinavk@quicinc.com>,
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
 Jernej Skrabec <jernej.skrabec@gmail.com>, Jonas Karlman <jonas@kwiboo.se>,
 Kishon Vijay Abraham I <kishon@kernel.org>,
 Konrad Dybcio <konrad.dybcio@linaro.org>,
 Kuogee Hsieh <quic_khsieh@quicinc.com>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Rob Clark <robdclark@gmail.com>
References: <20240217150228.5788-2-johan+linaro@kernel.org>
Subject: Re: [PATCH 1/6] drm/bridge: aux-hpd: fix OF node leaks
Content-Language: en-GB
From: Markus Elfring <Markus.Elfring@web.de>
In-Reply-To: <20240217150228.5788-2-johan+linaro@kernel.org>
X-Provags-ID: V03:K1:1qY8TG6XGBPBySkXD9Iw+B/jMk+ITC9FUkKiHaIFz/AtRCFm3X8
 A2bG3gibnYIc7UfT5py0ZV3IHcRAAwqod7yJen0dD22Od/rMMXKMtv4O3ehHFd6NK1O47oF
 2FKhSK+MFr0qgPhK4sp6Gvv75D7So3Dsd6VTfJ4FGrbLdu71hXEBz4h4bEnOqoDzSyVLUQM
 FFo2segx5J963ehK0Nyqg==
UI-OutboundReport: notjunk:1;M01:P0:Vt1j2p9N3tU=;Y5Fkv24B75ZRsEO6v+JeViz6QDS
 Z0Qr1vSndEAhOcBQzzzF9Hc+zTH8Lh5ACQIDs7Em43y0RsMfANmO66fe8KzHagSpTU3nCS9yw
 seqRMXtdrL7zS+FYfxRWVQMh2n+AW0LD8yuU/LvcAOqSzpZuAxCp9sB894cWb6Vs/KQwhcvix
 0c0MCspFvzytZ8Z/VmjJpOa6U7u79EUFZbSTMcXdtOidhEyGaXoD1ed1lSk72ZHY4WrxBcoIG
 AQDpd7AAX8XoGPbGzDh8DSIIf76R1xfHsRz/IWtBKre8C5hyOZibsT6rlCWZf1Hn4OY8nyGe8
 0R7jtfGDhFTNaLob/euJ4Xouo1S6JDEo6roUqqRQhLm+eihsK/1yoocr3e4TN5EfooNR/mqlb
 JU0s2ZXbFHxS1HxFt10qTR2Q3UBDpjnHxaf0nc6H7jpfWpYApArkm5d6/CArQHWMYRyHggilo
 NOJYAzpbA7OAaB9NNxId1wvcwZvrTgkzAeabC2c5HsL0UzNsbWqKbMMceESmfn72wOIfsQIsP
 L1S6NcAESVAnTYRBVYmDfWpuRiWfiWzh6aw9JFeF6HLm6Y4ajY/9ve+rE1vwM2zw9Na/oA3vn
 fbfuZnuDVcd6HgPLX6VmhUXnUzA/O+87vE3/mjhRZ30qPnFNmB7/gDo+4lkRApUIZ+Y5SsU8T
 C/RmhXE33yy5bOoTU1jR3W+iZ1ylFub+AO8utosVVJ5xfLspRIaoR6ptLogpbtO8A+duLEl5g
 BTecZA4H8EdbrwYdstFYfumSnHWDkijS5WNqggvyMOhheue05/XZGimtzonJucoBOFIY89JRK
 mjveQA3OLbiH8J7EvTIIAlcAE3cn0wtcE7uXKqhPCSnq8=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240219_094910_507134_396142FE 
X-CRM114-Status: UNSURE (   8.09  )
X-CRM114-Notice: Please train this message.
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

PiBUaGUgdHdvIGRldmljZSBub2RlIHJlZmVyZW5jZXMgdGFrZW4gZHVyaW5nIGFsbG9jYXRpb24g
bmVlZCB0byBiZQo+IGRyb3BwZWQgd2hlbiB0aGUgYXV4aWxpYXJ5IGRldmljZSBpcyBmcmVlZC4K
4oCmCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2JyaWRnZS9hdXgtaHBkLWJyaWRnZS5jCuKApgo+
IEBAIC03NCw2ICs3NSw4IEBAIHN0cnVjdCBkZXZpY2UgKmRybV9kcF9ocGRfYnJpZGdlX3JlZ2lz
dGVyKHN0cnVjdCBkZXZpY2UgKnBhcmVudCwKPgo+ICAJcmV0ID0gYXV4aWxpYXJ5X2RldmljZV9p
bml0KGFkZXYpOwo+ICAJaWYgKHJldCkgewo+ICsJCW9mX25vZGVfcHV0KGFkZXYtPmRldi5wbGF0
Zm9ybV9kYXRhKTsKPiArCQlvZl9ub2RlX3B1dChhZGV2LT5kZXYub2Zfbm9kZSk7Cj4gIAkJaWRh
X2ZyZWUoJmRybV9hdXhfaHBkX2JyaWRnZV9pZGEsIGFkZXYtPmlkKTsKPiAgCQlrZnJlZShhZGV2
KTsKPiAgCQlyZXR1cm4gRVJSX1BUUihyZXQpOwoKVGhlIGxhc3QgdHdvIHN0YXRlbWVudHMgYXJl
IGFsc28gdXNlZCBpbiBhIHByZXZpb3VzIGlmIGJyYW5jaC4KaHR0cHM6Ly9lbGl4aXIuYm9vdGxp
bi5jb20vbGludXgvdjYuOC1yYzUvc291cmNlL2RyaXZlcnMvZ3B1L2RybS9icmlkZ2UvYXV4LWhw
ZC1icmlkZ2UuYyNMNjMKCkhvdyBkbyB5b3UgdGhpbmsgYWJvdXQgdG8gYXZvaWQgc3VjaCBhIGJp
dCBvZiBkdXBsaWNhdGUgc291cmNlIGNvZGUKYnkgYWRkaW5nIGEgbGFiZWwgaGVyZT8KClJlZ2Fy
ZHMsCk1hcmt1cwoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmlu
ZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8v
bGludXgtcGh5Cg==
