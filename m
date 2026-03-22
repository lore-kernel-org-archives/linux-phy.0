Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 22B2EFC72C5
	for <linux-phy@archiver.kernel.org>; Sun, 22 Mar 2026 13:39:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fi/SJ/0vBy9YtgWMJuxi+orUHSM/6NUhAUBo1/TKDng=; b=dCbEIBTJe64cz0
	/kTbqLi0SWEjTsnLCJHLlE8STRG6cPYb4cDRk34wWyb1lOx2MLwGqBwg4i0C3eJnvemiFV8gHFMId
	QFfirCc2JAyJdApsUVgnI0HfcqhdNvpR92xvYWSjw5Pxzr/x0C7Kx97ABD/V5LV06tr2hkp52YI3D
	qmvoPEQrs39RtQlyj0QTdvD5PEfmq6X9aGPugM+VaD61OA80xRp2fMi3vcPkKT5WNmHdey1vjKr2D
	qV8jxKO/O665jt3EL71h0Tf8vv0r3fhcUrUVs/nhu3VHjcXZeYqjZMyS9H0J0BH4BZX2cVJGqlLhW
	n2MH2zMOag/4L1sjVy4g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w4J1j-0000000FNFt-3Gp6;
	Sun, 22 Mar 2026 13:39:35 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w4J1f-0000000FNDt-1LQO
	for linux-phy@lists.infradead.org;
	Sun, 22 Mar 2026 13:39:33 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 80C604388B
	for <linux-phy@lists.infradead.org>; Sun, 22 Mar 2026 13:39:30 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 61733C2BCB3
	for <linux-phy@lists.infradead.org>; Sun, 22 Mar 2026 13:39:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774186770;
	bh=m3DFLOq8f/rq5Wyza2szchvR0UjBUxMQG1hQfeW+TvQ=;
	h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
	b=aIa8y76oIaroKvoVI865SfOL3XDns8ctJ+rbmzQifVRvPhSXTDVsua379xIiy7D/A
	 nnITdWeOzN96YF1k2f9XNr3YVAhU1k9bftiQ61Go9tJClEF5ATA/Om5+hjVteZRnZQ
	 ILlpmQsu7ZEIwJMtyppqhySd2XSGxllO8wDhjELcmVNEGF5jAVvBQtNGUYj/DqNC+S
	 P1H1/0ut4xzYFgOTfez4D0jBPbwjnKdXGLLJK26szBRDnwROJk7ozUxfJrdEr84e72
	 cKUOoGtcy1BUZIk7c+vGumcxuSxxJiwtKkatK/3ZjwSqEXVYUO6zSLAa5lF+XweAo+
	 5yQW3A9mjzYQw==
Received: by mail-dl1-f54.google.com with SMTP id a92af1059eb24-12a693cdf29so2437932c88.0
        for <linux-phy@lists.infradead.org>; Sun, 22 Mar 2026 06:39:30 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCXoy7BQSfnH81TY/M+xVlSYOZEgXS9Xy6Bj/U0oL+4OWs9GWDg32mnz3eynoM7IT92juK0gJs/a7X0=@lists.infradead.org
X-Gm-Message-State: AOJu0YwlrDEHnbS1qaHp7wobEtvtNveM8pb6/k+z44rGqB3BEqeBrYn3
	4TEdY8LA2cB1sx6SwJ9fOec1+Nrn36UL0pqlK6uXwAm/DvizIC3lDsMNkhzzTTRAUert3arJRaQ
	qsrf96LUFUC3V+LlO+27QBzQ9ZWUcbA==
X-Received: by 2002:a05:7022:6628:b0:128:d5bd:3557 with SMTP id
 a92af1059eb24-12a722a15f4mr3801000c88.4.1774186769719; Sun, 22 Mar 2026
 06:39:29 -0700 (PDT)
MIME-Version: 1.0
References: <cover.1771863641.git.l.scorcia@gmail.com> <5f880f1334aa93184afee3e36132ca42628821fb.1771863641.git.l.scorcia@gmail.com>
In-Reply-To: <5f880f1334aa93184afee3e36132ca42628821fb.1771863641.git.l.scorcia@gmail.com>
From: Chun-Kuang Hu <chunkuang.hu@kernel.org>
Date: Sun, 22 Mar 2026 13:39:17 +0000
X-Gmail-Original-Message-ID: <CAAOTY_8H0fmap_QGqqV27FAEYTvdj=1aBALSX6VME3r7avVCOA@mail.gmail.com>
X-Gm-Features: AaiRm52YGXR86xSZou6nc8shJxbYgOHHf9z-llYwgyJUbBqSHJxUq9frUqd_1_E
Message-ID: <CAAOTY_8H0fmap_QGqqV27FAEYTvdj=1aBALSX6VME3r7avVCOA@mail.gmail.com>
Subject: Re: [PATCH v3 6/6] gpu: drm: mediatek: ovl: add specific entry for mt8167
To: Luca Leonardo Scorcia <l.scorcia@gmail.com>
Cc: linux-mediatek@lists.infradead.org, Val Packett <val@packett.cool>, 
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, 
	Chun-Kuang Hu <chunkuang.hu@kernel.org>, Philipp Zabel <p.zabel@pengutronix.de>, 
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, 
	Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Chunfeng Yun <chunfeng.yun@mediatek.com>, Vinod Koul <vkoul@kernel.org>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Matthias Brugger <matthias.bgg@gmail.com>, 
	dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-phy@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260322_063931_409822_A37EBE25 
X-CRM114-Status: GOOD (  13.40  )
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

SGksIEx1Y2E6CgpMdWNhIExlb25hcmRvIFNjb3JjaWEgPGwuc2NvcmNpYUBnbWFpbC5jb20+IOaW
vCAyMDI25bm0MuaciDIz5pel6YCx5LiAIOS4i+WNiDQ6Mjblr6vpgZPvvJoKPgo+IEZyb206IFZh
bCBQYWNrZXR0IDx2YWxAcGFja2V0dC5jb29sPgo+Cj4gV2hpbGUgdGhpcyBjb25maWd1cmF0aW9u
IGlzIG90aGVyd2lzZSBpZGVudGljYWwgdG8gbXQ4MTczLCBhY2NvcmRpbmcKPiB0byBBbmRyb2lk
IGtlcm5lbCBzb3VyY2VzLCB0aGlzIFNvQyBkb2VzIG5lZWQgc21pX2lkX2VuLgoKQXBwbGllZCB0
byBtZWRpYXRlay1kcm0tbmV4dCBbMV0sIHRoYW5rcy4KClsxXSBodHRwczovL2dpdC5rZXJuZWwu
b3JnL3B1Yi9zY20vbGludXgva2VybmVsL2dpdC9jaHVua3VhbmcuaHUvbGludXguZ2l0L2xvZy8/
aD1tZWRpYXRlay1kcm0tbmV4dAoKUmVnYXJkcywKQ2h1bi1LdWFuZy4KCj4KPiBTaWduZWQtb2Zm
LWJ5OiBWYWwgUGFja2V0dCA8dmFsQHBhY2tldHQuY29vbD4KPiBTaWduZWQtb2ZmLWJ5OiBMdWNh
IExlb25hcmRvIFNjb3JjaWEgPGwuc2NvcmNpYUBnbWFpbC5jb20+Cj4gUmV2aWV3ZWQtYnk6IEFu
Z2Vsb0dpb2FjY2hpbm8gRGVsIFJlZ25vIDxhbmdlbG9naW9hY2NoaW5vLmRlbHJlZ25vQGNvbGxh
Ym9yYS5jb20+Cj4gLS0tCj4gIGRyaXZlcnMvZ3B1L2RybS9tZWRpYXRlay9tdGtfZGlzcF9vdmwu
YyB8IDEyICsrKysrKysrKysrKwo+ICAxIGZpbGUgY2hhbmdlZCwgMTIgaW5zZXJ0aW9ucygrKQo+
Cj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9tZWRpYXRlay9tdGtfZGlzcF9vdmwuYyBi
L2RyaXZlcnMvZ3B1L2RybS9tZWRpYXRlay9tdGtfZGlzcF9vdmwuYwo+IGluZGV4IGUwMjM2MzUz
ZDQ5OS4uOTdhODk5ZTRiZDk5IDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9tZWRpYXRl
ay9tdGtfZGlzcF9vdmwuYwo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9tZWRpYXRlay9tdGtfZGlz
cF9vdmwuYwo+IEBAIC02NzEsNiArNjcxLDE2IEBAIHN0YXRpYyBjb25zdCBzdHJ1Y3QgbXRrX2Rp
c3Bfb3ZsX2RhdGEgbXQyNzAxX292bF9kcml2ZXJfZGF0YSA9IHsKPiAgICAgICAgIC5udW1fZm9y
bWF0cyA9IEFSUkFZX1NJWkUobXQ4MTczX2Zvcm1hdHMpLAo+ICB9Owo+Cj4gK3N0YXRpYyBjb25z
dCBzdHJ1Y3QgbXRrX2Rpc3Bfb3ZsX2RhdGEgbXQ4MTY3X292bF9kcml2ZXJfZGF0YSA9IHsKPiAr
ICAgICAgIC5hZGRyID0gRElTUF9SRUdfT1ZMX0FERFJfTVQ4MTczLAo+ICsgICAgICAgLmdtY19i
aXRzID0gOCwKPiArICAgICAgIC5sYXllcl9uciA9IDQsCj4gKyAgICAgICAuZm10X3JnYjU2NV9p
c18wID0gdHJ1ZSwKPiArICAgICAgIC5zbWlfaWRfZW4gPSB0cnVlLAo+ICsgICAgICAgLmZvcm1h
dHMgPSBtdDgxNzNfZm9ybWF0cywKPiArICAgICAgIC5udW1fZm9ybWF0cyA9IEFSUkFZX1NJWkUo
bXQ4MTczX2Zvcm1hdHMpLAo+ICt9Owo+ICsKPiAgc3RhdGljIGNvbnN0IHN0cnVjdCBtdGtfZGlz
cF9vdmxfZGF0YSBtdDgxNzNfb3ZsX2RyaXZlcl9kYXRhID0gewo+ICAgICAgICAgLmFkZHIgPSBE
SVNQX1JFR19PVkxfQUREUl9NVDgxNzMsCj4gICAgICAgICAuZ21jX2JpdHMgPSA4LAo+IEBAIC03
NDIsNiArNzUyLDggQEAgc3RhdGljIGNvbnN0IHN0cnVjdCBtdGtfZGlzcF9vdmxfZGF0YSBtdDgx
OTVfb3ZsX2RyaXZlcl9kYXRhID0gewo+ICBzdGF0aWMgY29uc3Qgc3RydWN0IG9mX2RldmljZV9p
ZCBtdGtfZGlzcF9vdmxfZHJpdmVyX2R0X21hdGNoW10gPSB7Cj4gICAgICAgICB7IC5jb21wYXRp
YmxlID0gIm1lZGlhdGVrLG10MjcwMS1kaXNwLW92bCIsCj4gICAgICAgICAgIC5kYXRhID0gJm10
MjcwMV9vdmxfZHJpdmVyX2RhdGF9LAo+ICsgICAgICAgeyAuY29tcGF0aWJsZSA9ICJtZWRpYXRl
ayxtdDgxNjctZGlzcC1vdmwiLAo+ICsgICAgICAgICAuZGF0YSA9ICZtdDgxNjdfb3ZsX2RyaXZl
cl9kYXRhfSwKPiAgICAgICAgIHsgLmNvbXBhdGlibGUgPSAibWVkaWF0ZWssbXQ4MTczLWRpc3At
b3ZsIiwKPiAgICAgICAgICAgLmRhdGEgPSAmbXQ4MTczX292bF9kcml2ZXJfZGF0YX0sCj4gICAg
ICAgICB7IC5jb21wYXRpYmxlID0gIm1lZGlhdGVrLG10ODE4My1kaXNwLW92bCIsCj4gLS0KPiAy
LjQzLjAKPgoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJh
ZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGlu
dXgtcGh5Cg==
