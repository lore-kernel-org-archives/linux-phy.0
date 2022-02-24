Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 85905C433EF
	for <linux-phy@archiver.kernel.org>; Thu, 24 Feb 2022 22:33:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FLVTocCZFLlB3sAqqaRQ3CZKVd15nPt1Ln8COkYegKk=; b=GDQqxQZa/VgThM
	hCxcw4a19KpWlh8/v1StLgnoNabBCxl8kvl1Pgdtl90sgNZRXwaEG/6EQXOsT3ybjJSLiHCD2nFR3
	5yaWEUIdNO94Iq3UYW3TVFRJH4L4/DeqMFSF5ujvRCuCAIcZc1/QbNJyshtMyEnZ5/1COQ6eHcj2V
	70M7EROIXMSyURB+pa65ltilHkO7YLzvF019cczr4MST17dpN9TWarCh8fG68HdxDpcpr1Gks161k
	rEwJDDorATwrqNTrtGRc5lFo3kpHIr1C1PXE+ybvTd2OIfGtd++1eYlj0LGl1XhxQk+ZrqminH+0o
	WU0kkLpa/qHH+Kpphxrg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nNMgQ-002Z3S-To; Thu, 24 Feb 2022 22:33:58 +0000
Received: from esa6.hgst.iphmx.com ([216.71.154.45])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nNMgN-002Z2x-0o
 for linux-phy@lists.infradead.org; Thu, 24 Feb 2022 22:33:56 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1645742035; x=1677278035;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=5Bqg2tNByBkWbYwqrPbDEk9fnZAcBWBONcmLRmvLSzM=;
 b=MhMuqaYlIX6pfuF/WVf4Nj1LYe2qK3DxkVFCg+cIa8uR0373+3HxokSM
 3NdxBEuqoJQJ4kOq5YR//ENg4SBfeHhn3ShtpbfGPTusrI0oAlNJMos8s
 8VceC1TZ3wFK0X9+LvvWG54iCl5ouxKuStBEXA7pSYj+eEiaqhO7iF0eK
 B7AflGN9uU02/wlO/Uibz8FQ3ARxqCYywgl01tgRckkTXmRra0btfEElA
 TZekDnTfaDNy9vMtaFzy12pnETzEQoSxhBdwKJfi5362rKn6YxcaQ1kLh
 mEr/JLkWMr7TdIh/mxPl/rCPawXIu1FCCNDtrHCLz+0Xel5/voQBy+gw4 A==;
X-IronPort-AV: E=Sophos;i="5.90,134,1643644800"; d="scan'208";a="194865678"
Received: from uls-op-cesaip01.wdc.com (HELO uls-op-cesaep01.wdc.com)
 ([199.255.45.14])
 by ob1.hgst.iphmx.com with ESMTP; 25 Feb 2022 06:33:52 +0800
IronPort-SDR: 6eKx5d3zoNHvDwIkAsEqjFe4BeW99ChBsfuEe//wppS/nUe983BNaWYHG6LTclUvkWlBMpvn2O
 yGC9JcSAsjJiP5UFq091O5mbP7X7kev7faWjTjl8Zbx/PfbBneFtqe4ucRi8sR9lUlSvH7ifvh
 rrbh+ivibcGFj973EpTzTAOiQ8h2AXve/JRBMSFwh7zwRigqsJO/Ej9RitzsrV2fq8V4H7qPRe
 +S+xO57TYoIFWIvkiA8aVx9G8Jd2XG/uBCPpq7aZ2v8XkZKRVCBHsdh/1RBQlOluZeqdFiwN84
 hxdvBoX7pSnmtjxtgNJrcazZ
Received: from uls-op-cesaip02.wdc.com ([10.248.3.37])
 by uls-op-cesaep01.wdc.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Feb 2022 14:06:26 -0800
IronPort-SDR: f8mWMrDFT1ZTz/vLrHUnI54KXa2O8IxoXWRtmuJJnC1okj890kYdOie/EmnZQVFroWFv5+WRq6
 O6gnc1MQPLXHiOPI8/ws4CTqcJAETasmYC348n3GE/d5I0uhNAd2RX7ZMtLQxXNGGYg668jh5F
 D9VN7QDr3tcCLVaa0yni9B/KMZCrQiJptHcPxS38polYkmJr34+tRDSbnqO5ysC6EhYDIaq7e8
 g2V1745RfGrTCZ8d/uqlwy2Rrnis7fcqZpSK473u6wwsJuk8LjvMGqGUCkiVXmNaQGHLL13ouU
 spw=
WDCIronportException: Internal
Received: from usg-ed-osssrv.wdc.com ([10.3.10.180])
 by uls-op-cesaip02.wdc.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Feb 2022 14:33:51 -0800
Received: from usg-ed-osssrv.wdc.com (usg-ed-osssrv.wdc.com [127.0.0.1])
 by usg-ed-osssrv.wdc.com (Postfix) with ESMTP id 4K4SPB6xrBz1SVnx
 for <linux-phy@lists.infradead.org>; Thu, 24 Feb 2022 14:33:50 -0800 (PST)
Authentication-Results: usg-ed-osssrv.wdc.com (amavisd-new); dkim=pass
 reason="pass (just generated, assumed good)"
 header.d=opensource.wdc.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=
 opensource.wdc.com; h=content-transfer-encoding:content-type
 :in-reply-to:organization:from:references:to:content-language
 :subject:user-agent:mime-version:date:message-id; s=dkim; t=
 1645742030; x=1648334031; bh=5Bqg2tNByBkWbYwqrPbDEk9fnZAcBWBONcm
 LRmvLSzM=; b=jakMV5fKD2nkNpNx+2djjMsPuE7ggfbANZwOCqsP3nzg5I08ih/
 MizX+GhLBadJrYpNZHnBCxG47YQI5cKnLF4UUyiuc5t2wQn9OjRHzTJji6cCnuSE
 Im4ZStKybplCBA9YrX2JNMQgppivYFPwwlsyVt1EtYWFfGlrDLtzMgPEuFNFJDJB
 P/Eo8HsZ8cGEQnAHqq5QGKVU5BIheFldasAGthp2W/nKNL7vPClZio3UdNfSf1X9
 o3fSkSWnkSbY3MprElaWAciYz0UEZchvkqdk7it8bdT9kKZsR4Bp8138XllFrEBF
 rY6FrGffhfjmeaicSzAVJV5ixxzRrTWG5bQ==
X-Virus-Scanned: amavisd-new at usg-ed-osssrv.wdc.com
Received: from usg-ed-osssrv.wdc.com ([127.0.0.1])
 by usg-ed-osssrv.wdc.com (usg-ed-osssrv.wdc.com [127.0.0.1]) (amavisd-new,
 port 10026)
 with ESMTP id ieicrZi0tvOf for <linux-phy@lists.infradead.org>;
 Thu, 24 Feb 2022 14:33:50 -0800 (PST)
Received: from [10.225.163.81] (unknown [10.225.163.81])
 by usg-ed-osssrv.wdc.com (Postfix) with ESMTPSA id 4K4SP95H4zz1Rvlx;
 Thu, 24 Feb 2022 14:33:49 -0800 (PST)
Message-ID: <c6a1d5ca-255b-9a3d-aad2-9c3dc4dd68a3@opensource.wdc.com>
Date: Fri, 25 Feb 2022 07:33:48 +0900
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Subject: Re: [PATCH phy v4 3/5] Revert "ata: ahci: mvebu: Make SATA PHY
 optional for Armada 3720"
Content-Language: en-US
To: =?UTF-8?Q?Marek_Beh=c3=ban?= <kabel@kernel.org>
Cc: Vinod Koul <vkoul@kernel.org>, linux-phy@lists.infradead.org,
 pali@kernel.org
References: <20220203214444.1508-1-kabel@kernel.org>
 <20220203214444.1508-4-kabel@kernel.org> <20220224161324.6ac0061c@dellmb>
 <6082e3a5-aaf7-f876-b1ec-c6627fba1503@kernel.dk>
 <20220224163738.7da04b51@dellmb>
From: Damien Le Moal <damien.lemoal@opensource.wdc.com>
Organization: Western Digital Research
In-Reply-To: <20220224163738.7da04b51@dellmb>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220224_143355_171990_BD50BCF8 
X-CRM114-Status: GOOD (  14.77  )
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

T24gMi8yNS8yMiAwMDozNywgTWFyZWsgQmVow7puIHdyb3RlOgo+IE9uIFRodSwgMjQgRmViIDIw
MjIgMDg6MTQ6NTggLTA3MDAKPiBKZW5zIEF4Ym9lIDxheGJvZUBrZXJuZWwuZGs+IHdyb3RlOgo+
IAo+PiBPbiAyLzI0LzIyIDg6MTMgQU0sIE1hcmVrIEJlaD9uIHdyb3RlOgo+Pj4gRGVhciBKZW5z
LAo+Pj4KPj4+IGNvdWxkIHlvdSBwbGVhc2Ugc2VuZCBBY2sgZm9yIHRoaXMgcGF0Y2g/Cj4+PiBo
dHRwczovL2xvcmUua2VybmVsLm9yZy9saW51eC1waHkvMjAyMjAyMDMyMTQ0NDQuMTUwOC00LWth
YmVsQGtlcm5lbC5vcmcvCj4+Pgo+Pj4gSXQgaXMgYSByZXZlcnQgb2YgYW5vdGhlciBwYXRjaCB0
aGF0IHdhcyBhZGRlZCBiZWNhdXNlIG9mIHBvdGVudGlhbAo+Pj4gcHJvYmxlbXMgaW4gY29tcGh5
IGRyaXZlciwgYW5kIHRoZXNlIGFyZSBub3cgc29sdmVkIGJ5IHRoaXMgc2VyaWVzLCBidXQKPj4+
IFZpbm9kIHNheXMgaGUgY2FuIGFwcGx5IHRoZSBBVEEgcGF0Y2ggYnV0IGhlIG5lZWRzIHlvdXIg
QWNrLiAgCj4+Cj4+IEknbSBub3QgbWFpbnRhaW5pbmcgbGliYXRhIGFueW1vcmUsIGFkZGluZyBE
YW1pZW4gd2hvJ3MgdGhlIG5ldwo+PiBtYWludGFpbmVyLiBMZWF2aW5nIGVtYWlsIGJlbG93Lgo+
IAo+IERlYXIgRGFtaWVuLAo+IGNvdWxkIHlvdSBsb29rIGF0IHRoaXMgcmV2ZXJ0IGFuZCBnaXZl
IHlvdXIgQWNrPyBTZWUgdGhlIHF1b3RlZCBtZXNzYWdlCj4gZm9yIEplbnMuCgpUaGUgcGF0Y2gg
bG9vayBPSyB0byBtZS4gQnV0IEkgaGF2ZSBub3QgcmVjZWl2ZWQgaXQsIG5vciBkbyBJIHNlZSBp
dCBpbgpsaW51eC1pZGUgbGlzdC4gUGxlYXNlIHJlc2VuZCBpdCB0byBtZSBhbmQgbGludXgtaWRl
IHNvIHRoYXQgSSBjYW4gYXBwbHkKaXQgdG9nZXRoZXIgd2l0aCBvdGhlciBsaWJhdGEgZml4ZXMu
Cgo+IAo+IFRoYW5rcy4KPiAKPiBNYXJlawoKCi0tIApEYW1pZW4gTGUgTW9hbApXZXN0ZXJuIERp
Z2l0YWwgUmVzZWFyY2gKCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0
cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2xpbnV4LXBoeQo=
