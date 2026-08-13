Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 956FDC5CFDB
	for <linux-phy@archiver.kernel.org>; Thu, 13 Aug 2026 22:06:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AW8EXQMKiJRHXVYm/+mn29oZJhLs68Q0EHXtLJ1G6a0=; b=00fRVN4rc/oOw6
	05E+ZHyTmXoZprCNZSeqpYZxvR1geT27EEsyAfHP8o7n3IKUmbvPJ6s+6G5506hCXtsENLqAOpu26
	HLMysOFdfvdNseVSeLJTIl63mb6GQ135M/AANjj2JzR8u51mqrF5RtilVM9DJCzET9hqPfdRL0Y/K
	BENxUmKLTy6czbp68L55t2Vxnpew++mdVUXgGIedVXtVTOh5dhzmG6k0AJjQUU6Tqb/ay8+R8riIh
	4d81vbg5XLlhvY7quVob3NBRVvwfIdzejQItkQnpur9jPgYSMymXLVyXl/oKMzwd5UuASN7nXIzl6
	YEsaWFSXmydyQ87sZq/A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wudZg-00000001gDB-38bo;
	Thu, 13 Aug 2026 22:06:56 +0000
Received: from mail-ed1-x532.google.com ([2a00:1450:4864:20::532])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wudZd-00000001gAo-3St1
	for linux-phy@lists.infradead.org;
	Thu, 13 Aug 2026 22:06:55 +0000
Received: by mail-ed1-x532.google.com with SMTP id 4fb4d7f45d1cf-6a3819e8be8so588041a12.0
        for <linux-phy@lists.infradead.org>; Thu, 13 Aug 2026 15:06:52 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1786658811; cv=none;
        d=google.com; s=arc-20260327;
        b=MCVIgQBpIUKaMABL0Z58xXLtbmpSRThMgag1Qi+0mPGFGmHvN9OPyqZeIAO/lUp/c3
         lcWRo3YuLtrXjK8eutre0wtm8OgMLDa8bPX1GF8aGiCEQ/emd+FtTEdHUAbr6Hp2Vc3c
         iP+A8g3ltf8e1auv3NvAQDDlSJkGZEYFR+nC9S259EYyhbCvl8xczDZMO6itxuW1nIt2
         K+HaCfJfPkqBsL574wULDl4lCmP8mZq8z96uWCoBeIT1CPkkY42jIDvWQaSWXnYqpAwx
         1Hm96D5vQBuMKN02bEQOidNz62uk6XKkByPhKVfCsCVEZA1yUNsMTbncdapk+pc9ZR8S
         EslQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=qRmz8k6sXK/ER/gcHUFE4e0+JlpkSGRojfQ+9B7tXcE=;
        fh=qMmddTx/VBolMyKkyvujxJgQ/FhPjH5BjeaQOAjijeY=;
        b=GIDT5mqkq6U2c527i6BtKdN+CJh07j/pR0HYvCCHx25Pc6kPZKdfK9H+ASv2meoWej
         2WDdOfl+WYUssRwj7u2NnHmz0O6i+iTTy+2OFzHNEW/Wse9xlr1XWeV2aSB4UJqlSB/C
         wVLZG2Qmn3fxCLNDREA6NbxcFb5VeRXCnl6crKfgaRQcJoOZy8xuOEbNHdpZQsbcWkHO
         Cc/N2KnE+WMzXEmZbXwxErcLNxv//3euvnGdf/FRwJvN7jRp10RA0gSvsGwZGDouOCnL
         1+Cn+8MI+h+WT3c1xFHtrl0JevPQPx+r+14d+Rs2xABoL8v8hOEigQo3EkrUQhSCr6sl
         ufIg==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1786658811; x=1787263611; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=qRmz8k6sXK/ER/gcHUFE4e0+JlpkSGRojfQ+9B7tXcE=;
        b=PnzjsGr9kE0zRWULtRGnSG1Zg13G60l2h5vD4z2D3h/U5u1H4B+saJMxDbpi0bJ5ob
         7Vg/RFOUtVB1zOzXjTYfo+NDHVYHvZ2IVxe+/XGV1GwAz7ksHkxDsUfCQ9N89euSVHoh
         nGVDjjCUbnoCcOXjSDizwljmUInslzpHeGKO7fs13ZbxFAjwLpE1ealY2y3z5bc0W6GY
         cmcsH17pOk/m6ZvEsSHGGSkpg6csOZvlLPKs6fzwxgJbHFEC0+JPRCm8REXfaRR218Po
         x/VDvlogVarLo274TGoPBZkXeWt6jD+Ku69/wDJ+LphwD0f4BXwaabTchAZ5GINfhsTf
         MJLQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1786658811; x=1787263611;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=qRmz8k6sXK/ER/gcHUFE4e0+JlpkSGRojfQ+9B7tXcE=;
        b=VK1YBS9eWVYBFHsItHKYi7n6aJBsKScaziqyS8imkiTuksSzGH0hkrJZvnbXJo29d7
         EFhqmLttb/LlguQCS3O5FqisD2Bu85BhcwRaXXk6FAHbqxWAbxpEzbQozXNliADruMUA
         KhaMFcJkP2W6H5zqIZRuvF1NZt4F4vGerdCXeTxE5XpH2TbkcbLIlVZKaHYTRhxZxD+6
         Qy9RogqNhDO4zJ+RPrQlJbuq+fezz5jgNDZ3uwmHiCPSqVO+U3DbJG7Vm/WGwVq/ICUL
         O0L36+nCZjL9bCWj1Z6hUZ+ENrkSSQOZovx6a4tGnxLCKyUvs31gbR3xx5mP9+esMELb
         wzRA==
X-Gm-Message-State: AOJu0YxQKFEFZQ8pY1l3j3fkdAa03U4mDEySkYkmF+PdEqS9fcUQn27n
	3wkC4fFgr+wAfDBPUVl4+Sm7FeqpooB2zFtvjxCnvjLwxwCi61VSI8D8vEknVtbOmWTzqbjEpA1
	KXZtncXmxE5wSzCRXMuNoIACWkE9BB/A=
X-Gm-Gg: AR+sD13mXFIeIdzl7aLUdbSzHfJtJ/h/u2myGSsW/OdQlwJ7hjE/pZVGBcz6DrpHUv6
	fG8oKaukcY764fl6DRMCfzs4crY+d9AdZUTKijU0sHCmRkFQdLm7ZIYF+ahmfs8iJzhNK7W3e1s
	C6cff5d+iQ+1uUAsbA0o++/5YJj2P2g/YfWKjDuImk9yfbj1O45KHBntznPfgYjb+Ukv34vjduH
	7xnIoAbg99U/3ITTEuNPtEW/SxIiQvLRHIXiCz1yx4s8mdY6Tz01lAovHLg7SEyZqMAJgv2yrg6
	CFo8AZXZpVkeGVWUTL+AVwfESbnq68Ic+TvoeIyMhHLHOTOIHL2EvFUpz/vmkVlKzmwzFNyyQ1p
	oAnt+9mCWxkyRZYUPCV90JrlOicjKzRyca/tjKZtw2MKtFJ9qlUxfBVBDZTrL2Dk4ElYluGcwN6
	+wB2j1HEyYzADMzQY+YwQKWTNuDAL9DZQS5Sp+ag04xLiJ4MMRShlEbVryW7Q6EbZ6mA==
X-Received: by 2002:a05:6402:5415:b0:6a0:de1e:c4c4 with SMTP id
 4fb4d7f45d1cf-6a38af28b64mr579658a12.10.1786658811142; Thu, 13 Aug 2026
 15:06:51 -0700 (PDT)
MIME-Version: 1.0
References: <20260304041602.7539-1-rosenp@gmail.com> <e46362c2-085d-4083-96a3-3e289553d1e2@web.de>
In-Reply-To: <e46362c2-085d-4083-96a3-3e289553d1e2@web.de>
From: Rosen Penev <rosenp@gmail.com>
Date: Thu, 13 Aug 2026 15:06:39 -0700
X-Gm-Features: AUfX_mxxbLVhx8tsxha-zvWQSeZmObFIhjixo3B6Lj81UBPnX02Dtw-Ochv0CiU
Message-ID: <CAKxU2N8t5cEuEPUwVTU3Z3rpT9VufjUzenVxdNerVxgBoa_nsA@mail.gmail.com>
Subject: Re: [PATCH] phy: uniphier-usb3: no devm for nvmem_cell_get
To: Markus Elfring <Markus.Elfring@web.de>
Cc: linux-phy@lists.infradead.org, linux-arm-kernel@lists.infradead.org, 
	LKML <linux-kernel@vger.kernel.org>, kernel-janitors@vger.kernel.org, 
	Kunihiko Hayashi <hayashi.kunihiko@socionext.com>, 
	Manivannan Sadhasivam <manivannan.sadhasivam@oss.qualcomm.com>, 
	Masami Hiramatsu <mhiramat@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>, 
	Vinod Koul <vkoul@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260813_150653_886623_A3BE70A6 
X-CRM114-Status: UNSURE (   9.48  )
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

T24gVGh1LCBBdWcgMTMsIDIwMjYgYXQgMjo0NOKAr0FNIE1hcmt1cyBFbGZyaW5nIDxNYXJrdXMu
RWxmcmluZ0B3ZWIuZGU+IHdyb3RlOgo+Cj4gPiBUaGVyZSBpcyBhYnNvbHV0ZWx5IG5vIHJlYXNv
biB0byBleHRlbmQgdGhlIGxpZmV0aW1lIG9mIG52bWVtX2NlbGxfZ2V0Cj4gPiB0byBhZnRlciBy
ZW1vdmFsIG9mIHRoZSBkcml2ZXIuIFVzZSBhbmQgZnJlZSByaWdodCBhZnRlciB1c2UuCj4KPiBI
b3cgZG8geW91IHRoaW5rIGFib3V0IHRvIGluY3JlYXNlIHRoZSBhcHBsaWNhdGlvbiBvZiBzY29w
ZS1iYXNlZCByZXNvdXJjZSBtYW5hZ2VtZW50PwpJIGRvbid0IHJlYWxseSBsaWtlIGl0Lgo+Cj4g
UmVnYXJkcywKPiBNYXJrdXMKCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBs
aXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2xpbnV4LXBoeQo=
