Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AD9A7C021A0
	for <linux-phy@archiver.kernel.org>; Thu, 13 Feb 2025 19:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PKHV3Bxank6tm5LOsNtWKbrLb362mBbiJ0mY2NP0BhQ=; b=LRCHIV4J0W9vpm
	aH5pwhMadyTcPvysJoAxk5AHl+7zh0xzmwF16bAIRnsRazmLT9h81MFqu/xKpOSSPmosTvIqMyfbO
	D3TFxYsNz6s6oc4orDfKW06YVxgCWXioLvezu6xEJkaSy3/oIuNqYV+OomnWOZm5ubl6I0WuEOJ+k
	zT8FY/RQ3P/0Tp2AjPG0h4yx0LbA6bo2D1Rcve1HL1URIAVwBs0cHEpKSOfKmmyTe2UGZG5PHDGzr
	HtbxrnlIQbzB9qmRdkdzF1gDIlV2FjrxYjUSCWov5M6Vq1IrKK1047BftWZxNUtd+XoG+HgBXDstd
	pkgLS6m+UBsJDZf7Jrdw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tieen-0000000CMAd-1EVX;
	Thu, 13 Feb 2025 19:13:53 +0000
Received: from nyc.source.kernel.org ([2604:1380:45d1:ec00::3])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tidgF-0000000CATl-2CLo
	for linux-phy@lists.infradead.org;
	Thu, 13 Feb 2025 18:11:20 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id 70BA3A4260A;
	Thu, 13 Feb 2025 18:09:33 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B488EC4CED1;
	Thu, 13 Feb 2025 18:11:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739470278;
	bh=i/aKh+UG4eFXBFc2spO6dzy+TGHEer6l9Vaf+E4l828=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=GAs7UjPcMZYhRHW/VAhhAbTZSdfuBh9xCaKTHWp7t15bb68giQEhn4MIaFygJMQdq
	 ssG2FoTYFTaBSjWkQp8DUClgwLoUy0KHuRQ6fHs+nVoihMyA4B/hYowSGHJfO+lvns
	 bgqSceD0iFLtiW72ZzwR79bgIpZ4Vbs376bNOpBegBziQI7Us3g/IiU0U4uF4R2m8a
	 SNVZRLrZv1mBflF7CSkejlRBuEsX5c39yJDTO4kObxpZgYwPTiwI4y3OCBH8LvPsT/
	 HrbhNgUNdQel7UslBUZYHxovQaCdo+PTQgZbkofby+VgmzKvFlTlwQc96+yyk71NpB
	 GkMcEbKqLfkQA==
From: Vinod Koul <vkoul@kernel.org>
To: aford173@gmail.com, kishon@kernel.org, linux-phy@lists.infradead.org, 
 linux-kernel@vger.kernel.org, xiaopeitux@foxmail.com
Cc: Pei Xiao <xiaopei01@kylinos.cn>
In-Reply-To: <tencent_6F503D43467AA99DD8CC59B8F645F0725B0A@qq.com>
References: <tencent_6F503D43467AA99DD8CC59B8F645F0725B0A@qq.com>
Subject: Re: [PATCH V6] phy: freescale: fsl-samsung-hdmi: Limit PLL lock
 detection clock divider to valid range
Message-Id: <173947027636.282331.3484983514931257187.b4-ty@kernel.org>
Date: Thu, 13 Feb 2025 23:41:16 +0530
MIME-Version: 1.0
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250213_101119_627668_AF73955C 
X-CRM114-Status: UNSURE (   6.62  )
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

Ck9uIFR1ZSwgMTEgRmViIDIwMjUgMTA6Mjk6NDggKzA4MDAsIHhpYW9wZWl0dXhAZm94bWFpbC5j
b20gd3JvdGU6Cj4gRklFTERfUFJFUCgpIGNoZWNrcyB0aGF0IGEgdmFsdWUgZml0cyBpbnRvIHRo
ZSBhdmFpbGFibGUgYml0ZmllbGQsCj4gYnV0IHRoZSBpbmRleCBkaXYgZXF1YWxzIHRvIDQsaXMg
b3V0IG9mIHJhbmdlLgo+IAo+IHdoaWNoIGdjYyBjb21wbGFpbnMgYWJvdXQ6Cj4gSW4gZnVuY3Rp
b24g4oCYZnNsX3NhbXN1bmdfaGRtaV9waHlfY29uZmlndXJlX3BsbF9sb2NrX2RldOKAmSwKPiBp
bmxpbmVkIGZyb20g4oCYZnNsX3NhbXN1bmdfaGRtaV9waHlfY29uZmlndXJl4oCZIGF0Cj4gZHJp
dmVycy9waHkvZnJlZXNjYWxlL3BoeS1mc2wtc2Ftc3VuZy1oZG1pLmMgOjQ3MDoyOgo+IC4vLi9p
bmNsdWRlL2xpbnV4L2NvbXBpbGVyX3R5cGVzLmg6NTQyOjM4OiBlcnJvcjogY2FsbCB0byDigJhf
X2NvbXBpbGV0aW1lX2Fzc2VydF81MzjigJkKPiBkZWNsYXJlZCB3aXRoIGF0dHJpYnV0ZSBlcnJv
cjogRklFTERfUFJFUDogdmFsdWUgdG9vIGxhcmdlIGZvciB0aGUgZmllbGQKPiAgIDU0MiB8ICBf
Y29tcGlsZXRpbWVfYXNzZXJ0KGNvbmRpdGlvbiwgbXNnLCBfX2NvbXBpbGV0aW1lX2Fzc2VydF8s
Cj4gX19DT1VOVEVSX18pCj4gICAgICAgfCAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgXgo+IC4vLi9pbmNsdWRlL2xpbnV4L2NvbXBpbGVyX3R5cGVzLmg6NTIzOjQ6IG5vdGU6
IGluIGRlZmluaXRpb24gb2YKPiBtYWNybyDigJhfX2NvbXBpbGV0aW1lX2Fzc2VydOKAmSA1MjMg
fCAgICBwcmVmaXggIyMgc3VmZml4KCk7Cj4gICAgICAgfCAgICBefn5+fn4KPiAuLy4vaW5jbHVk
ZS9saW51eC9jb21waWxlcl90eXBlcy5oOjU0MjoyOiBub3RlOiBpbiBleHBhbnNpb24gb2YgbWFj
cm8KPiDigJhfY29tcGlsZXRpbWVfYXNzZXJ04oCZCj4gICA1NDIgfCAgX2NvbXBpbGV0aW1lX2Fz
c2VydChjb25kaXRpb24sIG1zZywgX19jb21waWxldGltZV9hc3NlcnRfLAo+ICBfX0NPVU5URVJf
XykKPiAKPiBbLi4uXQoKQXBwbGllZCwgdGhhbmtzIQoKWzEvMV0gcGh5OiBmcmVlc2NhbGU6IGZz
bC1zYW1zdW5nLWhkbWk6IExpbWl0IFBMTCBsb2NrIGRldGVjdGlvbiBjbG9jayBkaXZpZGVyIHRv
IHZhbGlkIHJhbmdlCiAgICAgIGNvbW1pdDogY2Q1N2U0MzI3NzA3MTI2ZGNhM2Y5NTE3Yjg0Mjc0
YzAwMWQ0YzE4NAoKQmVzdCByZWdhcmRzLAotLSAKflZpbm9kCgoKCi0tIApsaW51eC1waHkgbWFp
bGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5m
cmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
