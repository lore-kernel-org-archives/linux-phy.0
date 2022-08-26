Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AC20AECAAD2
	for <linux-phy@archiver.kernel.org>; Fri, 26 Aug 2022 07:34:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JOoE41xOeLx4aL1XbACVbTrmUmJRiJJY0IBMfg4TVh8=; b=2uuJOXk8ZLlbvf
	75EKkMx1c0X9meIum4gA19w0IbWwHxDz7UZ5mrRzftQ1lGUi/NHFHDpmtv3mWWD+vDl+Q3X2N3x1B
	tDr1JooqCnmNIph+Lfiwsa1sjE3SHDmk3/tfU2Lhhg2ppp52LD8uwiyDIMTI7qNJQi/gTwnB7I/pb
	w9fPMjtVKKp4fEl7qVHkpThm0MFC3JkuppzUTjScd/SuARkwCDIsjMeJxcAFbl/HwqkRjNLA8oW5c
	2B6dc87K0L+4MV8emRlq8sktyi4ebRTRtTUkPWk9UAHsMABIt+EQeUuil0FyZkBba9SG5BtwXTn37
	QluUwjXKiAvdarmDKJDA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oRTrb-00GTGg-3y; Fri, 26 Aug 2022 07:34:47 +0000
Received: from ams.source.kernel.org ([2604:1380:4601:e00::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oRTrY-00GTG5-Fl
	for linux-phy@lists.infradead.org; Fri, 26 Aug 2022 07:34:45 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id 03406B8273D;
	Fri, 26 Aug 2022 07:34:43 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 95188C433C1;
	Fri, 26 Aug 2022 07:34:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661499281;
	bh=dYckvgWZ0EHsuUHM/YHbmDdRTlJoPdgAV+BPD1iSMII=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=JvuAnhFfLZ05ljxagHMlMhZ3+XkXZOAX8OFQ1+kvvWFu/JkN38BdXmUWz7SiyrDXO
	 wgtRC9+E0hguEf/fJ3XgZplIJAowht0vysc9tTs4Un74H52ba+b3fltk8QNk1LeUDz
	 A5GpdD+sD9g2WfGMszgp4MdGzNcy1Dfq/NEy+WwBSb36tE3jTttWAiea8drP7OtlHK
	 39Xtjs3U2/ZQ5IkBzrvR04azo8Shgw0x/q9ARwH8WmoX83Isogklte8cL77uS3FpHH
	 U44w/ZY0uJo+Dnf77OqmGL2BVh2s8gf7CYY08SbjCDfSXl220sFFvgr23grtGvnzRk
	 nPM9lBIYBRtGw==
Received: by pali.im (Postfix)
	id B39F9831; Fri, 26 Aug 2022 09:34:38 +0200 (CEST)
Date: Fri, 26 Aug 2022 09:34:38 +0200
From: Pali =?utf-8?B?Um9ow6Fy?= <pali@kernel.org>
To: Shinichiro Kawasaki <shinichiro.kawasaki@wdc.com>
Cc: Marek =?utf-8?B?QmVow7pu?= <kabel@kernel.org>,
	"linux-phy@lists.infradead.org" <linux-phy@lists.infradead.org>,
	Damien Le Moal <Damien.LeMoal@wdc.com>
Subject: Re: ARMADA espressobin SATA drive detection failure
Message-ID: <20220826073438.zkt6uisgay37jddp@pali>
References: <20220813013534.l5hzxv7mc5fylx7m@shindev>
 <20220813093214.6ved4ka3l2thkn2n@pali>
 <20220813115338.uq4xbznngjradzi6@shindev>
 <20220813120108.vaiwnzhofz6hy5kc@pali>
 <20220813124729.qondfc7z5eoeoq7p@shindev>
 <20220813125052.hjd6lhh4fcc7jl5u@pali>
 <20220813230233.3hyvkoexqitfnlte@shindev>
 <20220813231050.l5xadzdpavmmtdbq@pali>
 <20220825130443.ccjtbwvcjm7upvgy@pali>
 <20220826045736.7ice6y3mruv7petg@shindev>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220826045736.7ice6y3mruv7petg@shindev>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220826_003444_677034_EBB4C3FC 
X-CRM114-Status: GOOD (  10.37  )
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

T24gRnJpZGF5IDI2IEF1Z3VzdCAyMDIyIDA0OjU3OjM3IFNoaW5pY2hpcm8gS2F3YXNha2kgd3Jv
dGU6Cj4gT24gQXVnIDI1LCAyMDIyIC8gMTU6MDQsIFBhbGkgUm9ow6FyIHdyb3RlOgo+IAo+IFsu
Li5dCj4gCj4gPiBTaGluaWNoaXJvLCBtZWFud2hpbGUsIGNvdWxkIHlvdSB0cnkgZm9sbG93aW5n
IGNoYW5nZSBvbiB0b3Agb2YgY2xlYW4KPiA+IGxpbnV4IHRyZWUgd2l0aG91dCBhbnkgYWRkaXRp
b25hbCBwYXRjaGVzPwo+IAo+IFRoYW5rcyBmb3IgY2FyaW5nIHRoaXMgaXNzdWUuIFN1cmUsIEkg
dHJpZWQgaXQgb24gdjUuMTguMTYgYW5kIGNvbmZpcm1lZCBpdAo+IGF2b2lkcyB0aGUgImF0YTE6
IFNBVEEgbGluayBkb3duIChTU3RhdHVzIDEwMCBTQ29udHJvbCAzMDApIiBtZXNzYWdlLiBNeSBT
U0Qgd2FzCj4gZGV0ZWN0ZWQgYXMgL2Rldi9zZGEuIEl0IGxvb2tzIHdvcmtpbmcgYXMgZXhwZWN0
ZWQuCj4gCj4gLS0gCj4gU2hpbidpY2hpcm8gS2F3YXNha2kKCk9rLCBJJ20gZ29pbmcgdG8gc2Vu
ZCB0aGlzIHBhdGNoLgoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3Rz
LmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGlu
Zm8vbGludXgtcGh5Cg==
