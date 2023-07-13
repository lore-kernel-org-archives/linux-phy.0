Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7ACA5C0015E
	for <linux-phy@archiver.kernel.org>; Thu, 13 Jul 2023 17:52:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CejwLHPB07W2fSdWc545mbWr4OcNARd9iz3Rm5i6t8g=; b=Xmf6GR9U7LjBTy
	CnEjR8iRO4USGI0LfONziao+xeDbPQWFgIJVAUnMsjrDKdR0Pb61oKS/F4G958POn6p0xqDSodKtG
	wt4LLA5ctOlNgs0zKIQjNYO/tQLjP6ydpgrYH6STmZzfsOwSO+LsrLAoyFb45gIqFSsM1P1NYwonO
	Pg6U3knMPyvqrNyxf/jUL6VJBlFCMa9N6yYJy9GjG5Cs67nL0vRPojNnGw6hyromlgPAG2KnVoTTj
	MDBaHj60kmqsyh6Vg8VG6QHfYbQGQYBYpnvZ830V+ZWGoavf2yHrff62vuIBesUYmtpnmELI4yUHL
	oTRKMG1P5C9jKI3iG9Yg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qK0UC-0045cD-0R;
	Thu, 13 Jul 2023 17:52:16 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qK0U9-0045bb-2j
	for linux-phy@lists.infradead.org;
	Thu, 13 Jul 2023 17:52:15 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 9C14861B19;
	Thu, 13 Jul 2023 17:52:12 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 37D8AC433C9;
	Thu, 13 Jul 2023 17:52:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1689270732;
	bh=clrj0QY3ZBhqFvGU0WyRdoEeXSfE6WZWhdiNMa9dGVg=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=t2tcf9cLZkX811gNZrYMxejiZRyjkv9Eiv1mEFOp6n5RRRI/Xn0wZ2GbO/dGPlWPV
	 fBbwbC43+/sqKutwqQ01/Z8krGnbD0uykM5KXiCBBdBfhThn8CyGWtEeJrnTsylU1J
	 976HK3nr6RP12nne6VKfRWWFTO9Ay3K2j1YBuuVmGiX79/Z2k1JTPxnLiKcHrU+lcU
	 68Ha2PtU9JHioCadwOP6ub9cqkowUS1G7ePHQpUfS4AVeiznNvSXn0Lxxw8WNpeIao
	 S/Xk/Du3ALnIgR++OQr8FHHEPRNjmX8ics6Ay7ONP2+TwvXNtPiu1ZaDX4FTfThocs
	 Dq2/BJ/9PCe9Q==
Date: Thu, 13 Jul 2023 23:22:07 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Geert Uytterhoeven <geert@linux-m68k.org>
Cc: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Yangtao Li <frank.li@vivo.com>, linux-arm-msm@vger.kernel.org,
	dmaengine@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-phy@lists.infradead.org
Subject: Re: [PATCH 1/5] dmaengine: qcom: gpi: Use
 devm_platform_get_and_ioremap_resource()
Message-ID: <ZLA5x/4Z8dgCrLjg@matsya>
References: <20230705081856.13734-1-frank.li@vivo.com>
 <168909383153.208679.15343948792914219046.b4-ty@kernel.org>
 <c3373ebe-2f52-bed7-7f59-98e1268c9af2@linux-m68k.org>
 <ZK6O2b88Nz6J2JeN@matsya>
 <CAMuHMdXiyk6NSGJWwby9VoP98=g0xu-SRAkDtxYqA-DcnOLmrQ@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAMuHMdXiyk6NSGJWwby9VoP98=g0xu-SRAkDtxYqA-DcnOLmrQ@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230713_105213_943324_FB95B4BA 
X-CRM114-Status: GOOD (  14.12  )
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

SGkgR2VlcnQsCgpPbiAxMy0wNy0yMywgMTA6MDAsIEdlZXJ0IFV5dHRlcmhvZXZlbiB3cm90ZToK
PiBPbiBXZWQsIEp1bCAxMiwgMjAyMyBhdCAxOjMw4oCvUE0gVmlub2QgS291bCA8dmtvdWxAa2Vy
bmVsLm9yZz4gd3JvdGU6Cj4gPiBPbiAxMi0wNy0yMywgMTE6MzMsIEdlZXJ0IFV5dHRlcmhvZXZl
biB3cm90ZToKPiA+Cj4gPiBUaGFua3MgZm9yIHBvaW50aW5nIHRoYXQgb3V0LCB5ZXMgc29tZXRo
aW5nIGlzIG1lc3NlZCB1cCBmb3IgbWUuCj4gPgo+ID4gPiBIb3dldmVyLCB0aGUgc3RhbmRhcmQg
d2F5IGlzIHRvIGFkZCBhIExpbms6IHRhZyBwb2ludGluZyB0byBsb3JlCj4gPiA+IGluc3RlYWQs
IGNmci4gWzNdLgo+ID4KPiA+IFllcCBhbmQgaWYgeW91IGxvb2sgYXQgdGhlIGRtYWVuZ2luZSBh
bmQgcGh5IGNvbW1pdHMgZm9yIDYuNCB0aGV5IGhhdmUKPiA+ICJMaW5rIiBpbiB0aGVtLCBzbyBz
b21ldGhpbmcgaXMgbm90IHdvcmtpbmcsIGxldCBtZSBmaXggdGhhdCB1cC4KPiAKPiBTb3JyeSwg
aGFkbid0IG5vdGljZWQgdGhhdCwgc28gSSBhc3N1bWVkIHlvdSB3ZXJlIGEgbmV3IHVzZXIgOy0p
Cj4gCj4gSSBzYXcgeW91IGhhdmUgYWxyZWFkeSB1cGRhdGVkIHlvdXIgYnJhbmNoZXMsIGJ1dCBG
VFIsIHRoZSBpc3N1ZQo+IHdhcyBjYXVzZWQgYnkgYSBuZXcgdmVyc2lvbiBvZiBnaXQsIHdoaWNo
IGJyb2tlIHRoZSBob29rLCBjZnIuIGNvbW1pdAo+IDJiYjE5ZTc0MGU5YjNlYjQgKCJEb2N1bWVu
dGF0aW9uOiB1cGRhdGUgZ2l0IGNvbmZpZ3VyYXRpb24gZm9yIExpbms6Cj4gdGFnIikgaW4gdjYu
NS1yYzEuCgpZZXMgdGhhdCB3YXMgZXhhY3RseSB0aGUgY2F1c2UsIHVwZGF0aW5nIG15IGhvb2sg
Zml4ZWQgaXQgdXAuIEhhZCB0byBmaXgKYWxsIHRoZSBjb21taXRzIGluIHRoZSB0cmVlcyB0aG91
Z2gsICAgIHRoYW5rcwoKLS0gCn5WaW5vZAoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGlu
dXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21h
aWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
