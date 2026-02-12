Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 03463EDF034
	for <linux-phy@archiver.kernel.org>; Thu, 12 Feb 2026 04:59:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dXgCefqKnFIShbhHrqkTsr/I61Ov3ftwt62HY4BhUNQ=; b=UtVqP22FUhfD3P
	2nYR+xbBBETLhUCQB2AEux73rJuZmoLb5QkVIgKS8KjiXkWUxIIYyvdtG+WfBi7eaoyNc328jsiTh
	ZTDWfsGfVorOKFhTuXzGS5P11XPlBdQDODZIcV1oAOsmPWIyRT6ecoa2Em3u77ZSgmHj6zYJqlWbe
	OW3Cz9mCjCFRABxeXeZ3hiQhUv2LehCs9lQ6g+c/u7UWBwY677B2/yE2LK5Cgs7CcCfNilhcqsgf2
	5rQVJXn6nLjeBBqaSuZ/DreZz0wDfWVazWxCh6rlaaVq0HgvXVJgL2OYhNM9lTJJiPLaWfyl5baAj
	62+R6Yyztti5jFAcrSEA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vqOnS-00000001djH-2Wb5;
	Thu, 12 Feb 2026 04:59:22 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vqOnN-00000001diw-0Ytr
	for linux-phy@lists.infradead.org;
	Thu, 12 Feb 2026 04:59:20 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 72FAB43C26;
	Thu, 12 Feb 2026 04:59:16 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C8AD6C19424;
	Thu, 12 Feb 2026 04:59:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770872356;
	bh=UnAdBLauz4b5Df5C+3yEl1YgYjyNNMVaiRJ8Yi+kh58=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=r71Kt3KMl5dacM2hd4zRiZPY9ASgouLClvQBczCm3QC9WC32MM0S8Hwc3BFNXel/z
	 8E85PQjPgucKv2aY0Qe1lRyBjf/0jHDOW4sjafOdjoEXg7L7DXqaHN5lLuYE2HNOuw
	 nev3+RaV1XqAQg3nfOWnJwOlfn1HvyBgcZzPkTHuQvKnC8iDBLj3EHxn1gIkujcl/I
	 t7cWKeP92BLzkj/focLbKecUoPXAlvtKipAKaDuJL2Y2IimbTH5m/RtYzQADtxEnno
	 U9JnjcQsnDCos36AnTjNk5L5gRPD8/gk9zt4TemhW1iePMfNclRwBdZXZsj36Wn0Ce
	 P6mVdDJufGYnw==
Date: Thu, 12 Feb 2026 10:29:12 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Geert Uytterhoeven <geert@linux-m68k.org>
Cc: Ulf Hansson <ulf.hansson@linaro.org>,
	Vladimir Oltean <olteanv@gmail.com>,
	Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Josua Mayer <josua@solid-run.com>,
	Wolfram Sang <wsa+renesas@sang-engineering.com>,
	Tommaso Merciai <tommaso.merciai.xr@bp.renesas.com>,
	linux-phy@lists.infradead.org, linux-mmc@vger.kernel.org,
	linux-renesas-soc@vger.kernel.org, linux-next@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH next] phy: renesas: rcar-gen3-usb2: Drop local
 devm_mux_state_get_optional()
Message-ID: <aY1eIG_U_GBOFQGt@vaman>
References: <67c8c4f9bf9f09fd0c13daedef27b82ff389ddfb.1770720452.git.geert+renesas@glider.be>
 <CAPDyKFpY2X8hephSfHq7rj_DaKX76ZSkWSCYXrGTEBUFHkvOzg@mail.gmail.com>
 <aYyrsPTH1923jV7y@vaman>
 <CAMuHMdUHNRuMmHU2ACX84nsZdXn_-fSamnF+LMFvZS3vkHnEWA@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAMuHMdUHNRuMmHU2ACX84nsZdXn_-fSamnF+LMFvZS3vkHnEWA@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260211_205917_217058_35FC2189 
X-CRM114-Status: GOOD (  24.41  )
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

SGkgR2VlcnQsCgpPbiAxMS0wMi0yNiwgMTc6MzAsIEdlZXJ0IFV5dHRlcmhvZXZlbiB3cm90ZToK
PiBIaSBWaW5vZCwKPiAKPiBPbiBXZWQsIDExIEZlYiAyMDI2IGF0IDE3OjE3LCBWaW5vZCBLb3Vs
IDx2a291bEBrZXJuZWwub3JnPiB3cm90ZToKPiA+IE9uIDEwLTAyLTI2LCAxNDozNCwgVWxmIEhh
bnNzb24gd3JvdGU6Cj4gPiA+IE9uIFR1ZSwgMTAgRmViIDIwMjYgYXQgMTE6NTMsIEdlZXJ0IFV5
dHRlcmhvZXZlbgo+ID4gPiA8Z2VlcnQrcmVuZXNhc0BnbGlkZXIuYmU+IHdyb3RlOgo+ID4gPiA+
IE5vdyB0aGUgbXV4IGNvcmUgcHJvdmlkZXMgZGV2bV9tdXhfc3RhdGVfZ2V0X29wdGlvbmFsKCk6
Cj4gPiA+ID4KPiA+ID4gPiAgICAgZHJpdmVycy9waHkvcmVuZXNhcy9waHktcmNhci1nZW4zLXVz
YjIuYzo5NDQ6MTogZXJyb3I6IHN0YXRpYyBkZWNsYXJhdGlvbiBvZiDigJhkZXZtX211eF9zdGF0
ZV9nZXRfb3B0aW9uYWzigJkgZm9sbG93cyBub24tc3RhdGljCj4gPiA+ID4gICAgICBkZWNsYXJh
dGlvbgo+ID4gPiA+ICAgICAgIDk0NCB8IGRldm1fbXV4X3N0YXRlX2dldF9vcHRpb25hbChzdHJ1
Y3QgZGV2aWNlICpkZXYsIGNvbnN0IGNoYXIgKm11eF9uYW1lKQo+ID4gPiA+ICAgICAgICAgICB8
IF5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fgo+ID4gPiA+ICAgICBJbiBmaWxlIGluY2x1ZGVk
IGZyb20gZHJpdmVycy9waHkvcmVuZXNhcy9waHktcmNhci1nZW4zLXVzYjIuYzoyMDoKPiA+ID4g
PiAgICAgaW5jbHVkZS9saW51eC9tdXgvY29uc3VtZXIuaDo2NDoxOTogbm90ZTogcHJldmlvdXMg
ZGVjbGFyYXRpb24gb2Yg4oCYZGV2bV9tdXhfc3RhdGVfZ2V0X29wdGlvbmFs4oCZIHdpdGggdHlw
ZSDigJhzdHJ1Y3QgbXV4X3N0YXRlICooc3RydWN0IGRldmljZSAqLCBjb25zdCBjaGFyICop4oCZ
Cj4gPiA+ID4gICAgICAgIDY0IHwgc3RydWN0IG11eF9zdGF0ZSAqZGV2bV9tdXhfc3RhdGVfZ2V0
X29wdGlvbmFsKHN0cnVjdCBkZXZpY2UgKmRldiwgY29uc3QgY2hhciAqbXV4X25hbWUpOwo+ID4g
PiA+ICAgICAgICAgICB8ICAgICAgICAgICAgICAgICAgIF5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+
fn5+fgo+ID4gPiA+Cj4gPiA+ID4gRml4IHRoaXMgYnkgZHJvcHBpbmcgdGhlIHRlbXBvcmFyeSBs
b2NhbCB3cmFwcGVyLgo+ID4gPiA+Cj4gPiA+ID4gRml4ZXM6IGFkMzE0MzQ4Y2ViNGZlMWYgKCJt
dXg6IEFkZCBoZWxwZXIgZnVuY3Rpb25zIGZvciBnZXR0aW5nIG9wdGlvbmFsIGFuZCBzZWxlY3Rl
ZCBtdXgtc3RhdGUiKQo+ID4gPiA+IEZpeGVzOiA4YmI5MmZkN2EwNDA3NzkyICgicGh5OiByZW5l
c2FzOiByY2FyLWdlbjMtdXNiMjogVXNlIG11eC1zdGF0ZSBmb3IgcGh5cnN0IG1hbmFnZW1lbnQi
KQo+ID4gPiA+IFNpZ25lZC1vZmYtYnk6IEdlZXJ0IFV5dHRlcmhvZXZlbiA8Z2VlcnQrcmVuZXNh
c0BnbGlkZXIuYmU+Cj4gPiA+Cj4gPiA+IFRoYW5rcyBHZWVydCBmb3IgaGVscGluZyBvdXQhCj4g
PiA+Cj4gPiA+ID4gLS0tCj4gPiA+ID4gICAtIGFkMzE0MzQ4Y2ViNGZlMWYgaXMgaW4gbW1jL25l
eHQsIGFuZCBhIFBSIGhhcyBhbHJlYWR5IGJlZW4gc2VudAo+ID4gPiA+ICAgICBodHRwczovL2xv
cmUua2VybmVsLm9yZy8yMDI2MDIwOTEzMzQ0MS41NTY0NjQtMS11bGYuaGFuc3NvbkBsaW5hcm8u
b3JnCj4gPiA+ID4gICAtIDhiYjkyZmQ3YTA0MDc3OTIgaXMgaW4gcGh5L25leHQKPiA+ID4KPiA+
ID4gVmlub2QsIGRvIHlvdSB3YW50IHRvIHBpY2sgdXAgdGhlICRzdWJqZWN0IHBhdGNoIGFzIGEg
Zml4IGZvciA3LjAtcmMxCj4gPiA+IG9yIGRvIHlvdSBwcmVmZXIgbWUgdG8gaGFuZGxlIGl0Pwo+
ID4KPiA+IFNob3VsZCBJIGRyb3AgdGhlIDhiYjkyZmQ3YTA0MDc3OTIgYW5kIGl0IG1ha2VzIHRo
aW5ncyBlYXNpZXIgZm9yCj4gPiBldmVyeW9uZSBhbmQgdGhlbiB3ZSBjYW4gcGljayBmaXhlZCBj
b21taXQgZm9yIDcuMSBjeWNsZS4uCj4gPgo+ID4gRG9lcyB0aGF0IHdvcmsgZm9yIGV2ZXJ5b25l
LiBJIHdhcyBhYm91dCB0byBzZW5kIFBSLCB3aWxsIGhvbGQgb2ZmIGZvciBhCj4gPiBiaXQuCj4g
Cj4gQWx0ZXJuYXRpdmVseSwgeW91IGNhbiBtZW50aW9uIHRoZSBzZW1hbnRpYyBjb25mbGljdCBp
biB5b3VyIFBSIHRvIExpbnVzLAo+IGFuZCBhc2sgaGltIHRvIGZvbGQgbXkgcGF0Y2ggaW50byB0
aGUgbWVyZ2UgY29tbWl0LgoKSG1tbSwgdGhhdCBpcyBhbHNvIGEgZ29vZCBvcHRpb24gYnV0IG1p
Z2h0IGxlYXZlIExpbnVzIGEgYml0IGdydW1weSBzbwpiaXQgcmVsdWN0YW50LiBEcm9wcGluZyBh
bmQgZ2V0dGluZyByaWdodCBpbXBsZW1lbnRhdGlvbiB3b3VsZCBiZQpiZXR0ZXIuIEkgdGhpbmsg
aXQgd2FzIGEgbWlzdGFrZSB0byBwaWNrIG9yIHRoaXMgYWxsIGNvdWxkIGhhdmUgZ29uZQp0aHJ1
IG11eCB0cmVlLgoKVGhhbmtzCi0tIAp+Vmlub2QKCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0
CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
