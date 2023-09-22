Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 955B5CD4847
	for <linux-phy@archiver.kernel.org>; Fri, 22 Sep 2023 18:24:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5d9HSFaM29YRhpuSF2/uWX+mG+ZyarAH59L3Uy8p/+E=; b=UYTjkXUKQMJE4f
	Wr8mOPKr7h4SzZ/MogB5VXjjNRsZbOIfRqG5K7L1/AaMTajUpVU7GYgVheLH5TICy6npvxdD1aiVg
	bI5HGcM4jQ9ykZoslz571T68r2xTe2QoCFiqodU8lWolws0d0kpszI6CYKPqFCMjGowSL2ks87gAd
	XlQ4aUZb5umMbCdKAh13ssm4emZZBmBHZTbtMpdDTyqbwSK5MFrqzYkcRxBR/inojlxHzCNtxB2sM
	i55ae0FIrAuBp5Rls/UbI8ChXfOs4+nC68t/LQEvj+j+wtfZTCs9sdXpSbmKTfFrwFZKMlbRuDYqW
	Wcfyu+QgQxqQu5h6BrCw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qjkow-009cQV-0z;
	Fri, 22 Sep 2023 18:24:06 +0000
Received: from sin.source.kernel.org ([145.40.73.55])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qjkos-009cPY-12
	for linux-phy@lists.infradead.org;
	Fri, 22 Sep 2023 18:24:04 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id 9697CCE2481;
	Fri, 22 Sep 2023 18:23:59 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E2577C433C8;
	Fri, 22 Sep 2023 18:23:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695407038;
	bh=RRQu2DA14XEsOavEYlHhXKY49cxRSB7CmCyQBdCxHsI=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Vt7kTBkEKWFfO5XRpzx3MKYN6JXRa3iKFBaOej4PW93d6qyYji0JQB24eFF7nAUTn
	 aTUuIM1SSFKHU0qc6T62YQNfsSGywaoVqU/PDZvPRv4nPhWtKpRbyNl4JjiqIdVlFj
	 MGM51PE+7PeQXBMaIzpIkaZ2FT2C7+zSYT644q0E4RrTZHwVf97zQVLUbeCrOWeyM5
	 8Eyc/sK2T9XWgAkelq9E3ZPX1RX7f08WgwKfxHBXASSvqzbjx0hYNv1EXR07m9YvIu
	 UM0SYVkgVxuHjWq/7hK0sioaL7KuRcnPmISLoglHmY9vYhGKrlkLUY5I69qq+gRvDE
	 n0WnYi4Db29Nw==
Date: Fri, 22 Sep 2023 20:23:50 +0200
From: Manivannan Sadhasivam <mani@kernel.org>
To: Bjorn Andersson <quic_bjorande@quicinc.com>
Cc: Manivannan Sadhasivam <mani@kernel.org>,
	Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
	Can Guo <quic_cang@quicinc.com>, quic_nguyenb@quicinc.com,
	quic_nitirawa@quicinc.com, martin.petersen@oracle.com,
	linux-scsi@vger.kernel.org, Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	open list <linux-kernel@vger.kernel.org>,
	"open list:ARM/QUALCOMM SUPPORT" <linux-arm-msm@vger.kernel.org>,
	"open list:GENERIC PHY FRAMEWORK" <linux-phy@lists.infradead.org>
Subject: Re: [PATCH 4/6] phy: qualcomm: phy-qcom-qmp-ufs: Move data structs
 and setting tables to header
Message-ID: <20230922182350.GA3381@thinkpad>
References: <1694411968-14413-1-git-send-email-quic_cang@quicinc.com>
 <1694411968-14413-5-git-send-email-quic_cang@quicinc.com>
 <CAA8EJpoWnXeJKPB04kJW6Qo7ifAnt1u2ZSiq+W2HWOez=hi5gA@mail.gmail.com>
 <20230919121524.GD4732@thinkpad>
 <CAA8EJpoqRBxS7HJrFdRAvv677hKJw+d_K+fN_4ABDrj+68r28w@mail.gmail.com>
 <20230920101923.GG4732@thinkpad>
 <20230921140220.GK1487598@hu-bjorande-lv.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230921140220.GK1487598@hu-bjorande-lv.qualcomm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230922_112402_555453_F2CDD7BB 
X-CRM114-Status: GOOD (  11.81  )
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

T24gVGh1LCBTZXAgMjEsIDIwMjMgYXQgMDc6MDI6MjBBTSAtMDcwMCwgQmpvcm4gQW5kZXJzc29u
IHdyb3RlOgo+IE9uIFdlZCwgU2VwIDIwLCAyMDIzIGF0IDEyOjE5OjIzUE0gKzAyMDAsIE1hbml2
YW5uYW4gU2FkaGFzaXZhbSB3cm90ZToKPiBbLi5dCj4gPiBCdHcsIHdoeSBkbyB3ZSBoYXZlICJw
aHktcWNvbSIgcHJlZml4IGluc2lkZSBkcml2ZXJzL3BoeS9xdWFsY29tbS8/Cj4gPiAKPiAKPiBU
aGF0IHdvdWxkIGJlIGEgaGlzdG9yaWNhbCBhcnRpZmFjdCwgYnV0IGl0IGRvZXMgcHJvdmlkZSBu
aWNlCj4gbmFtZXNwYWNpbmcgZm9yIHRoZSBnZW5lcmF0ZWQgLmtvIGZpbGVzIC0gYW5kIGlpcmMg
bWtpbml0Y3BpbyBkb2Vzbid0Cj4gYXV0b21hdGljYWxseSBwaWNrIHRoZXNlIHVwLCBzbyBjaGFu
Z2luZyBpdCB3b3VsZCBjYXVzZSBpc3N1ZXMgZm9yIG91cgo+IHVzZXJzLgo+IAoKV2VsbCwgbXkg
Y29uY2VybiBpcyBvbmx5IHdpdGggdGhlIGRyaXZlciBuYW1lIGFuZCBub3Qgd2l0aCB0aGUgbW9k
dWxlIG5hbWUuCkFuZCB5ZXMsIG1vZHVsZSBuYW1lIHNob3VsZCBoYXZlIHRoZSBwcm9wZXIgcHJl
Zml4ICh1bmxpa2UgIm1zbSIgZm9yIHRoZQpEUk0gbW9kdWxlKS4KCi0gTWFuaQoKPiBSZWdhcmRz
LAo+IEJqb3JuCgotLSAK4K6u4K6j4K6/4K614K6j4K+N4K6j4K6p4K+NIOCumuCupOCuvuCumuCu
v+CuteCuruCvjQoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmlu
ZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8v
bGludXgtcGh5Cg==
