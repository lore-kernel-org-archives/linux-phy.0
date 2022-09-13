Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C99BBECAAD8
	for <linux-phy@archiver.kernel.org>; Tue, 13 Sep 2022 16:46:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
	List-Owner; bh=ISfEfQiD+zESAvtNCyus5bFhH8BK798Pqg3rceSXFQo=; b=geiZX1DAsFkigW
	Kf/Iumkbx6BnWOnh/B4sgOlhU3JTkQhmvoLLPApp6fRbVJzOoYe3bvr+MparyqM8pqBwofHHM+hoE
	ltMW/vVMSGboDgpnvIDD8jeMDX3+0l4+nFMoNf1QmReL99zcSM3PJ3shysSDVh87KkIFQ6g1FEARm
	szyvkqmurkAEijwZbzqG/DevtM2tLnSu7Mn69TK/Fnt1dZ4c5Uixld1ST7xT/2AkQkt/LOgCiINBG
	Q5pvDF5gacWGcLeJGBuHS97qVtx39q/SNPffQipzv4K4siONupUYlNSLj7WBPZ63Vy8OCyRJCkznW
	75p3A+vbNxC/J57DgmmA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oY93U-00DXce-0n; Tue, 13 Sep 2022 16:46:36 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oY8yN-00DU81-Ag
	for linux-phy@lists.infradead.org; Tue, 13 Sep 2022 16:41:20 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 18176614F9;
	Tue, 13 Sep 2022 16:41:18 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 51134C433C1;
	Tue, 13 Sep 2022 16:41:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663087277;
	bh=zbv4EwTaP7rUkUEvFc0RdqraUvYNfEaRoM8zAcgBhuk=;
	h=Date:From:To:Cc:Subject:In-Reply-To:From;
	b=pRweID/xbMDKa46YcOEacdA2JxVlxKekXd0bNpQGONzRzVTSM/ooW4cMQNrdO0AlV
	 G4FPiNAc9Uab/ewSkNMRbzO0kMfN4ly/+AzHlzSEZ3extX8VHzzsSBNtiCo78yWin/
	 32VcE3QYY22/a2s7VwqmgkK3Sun8cg8wg/tpZUYQqu/NYW8meeeu6ylxIi8zur3vjN
	 Z8d5mu/VaZputxRt9QOnh8024aU7m2o0eevjYtdIKouhmHzOFwregHfmliUq15UtIE
	 5AXH6at/lGGxfSVLt3POxlUuWM5mdD4X9SFK1Hh8yXPMFKHCauimcnNvi4fjwlICQy
	 VyyCFAfSamlCA==
Date: Tue, 13 Sep 2022 11:41:15 -0500
From: Bjorn Helgaas <helgaas@kernel.org>
To: Vinod Koul <vkoul@kernel.org>
Cc: Krishna chaitanya chundru <quic_krichai@quicinc.com>,
	linux-pci@vger.kernel.org, linux-arm-msm@vger.kernel.org,
	linux-kernel@vger.kernel.org, mka@chromium.org,
	quic_vbadigan@quicinc.com, quic_hemantk@quicinc.com,
	quic_nitegupt@quicinc.com, quic_skananth@quicinc.com,
	quic_ramkri@quicinc.com, manivannan.sadhasivam@linaro.org,
	swboyd@chromium.org, dmitry.baryshkov@linaro.org,
	Kishon Vijay Abraham I <kishon@ti.com>,
	"open list:GENERIC PHY FRAMEWORK" <linux-phy@lists.infradead.org>
Subject: Re: [PATCH v6 3/5] phy: core: Add support for phy power down & power
 up
Message-ID: <20220913164115.GA603018@bhelgaas>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <YyCahxV+315zoSQG@matsya>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220913_094119_457967_72E865B9 
X-CRM114-Status: GOOD (  10.22  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

On Tue, Sep 13, 2022 at 08:28:15PM +0530, Vinod Koul wrote:
> On 09-09-22, 14:14, Krishna chaitanya chundru wrote:
> > Introducing phy power down/up callbacks for allowing to park the
> > link-state in L1ss without holding any PCIe resources during
> > system suspend.
> 
> where is the rest of the series, pls cc relevant folks on cover at
> least!

Would be best to cc relevant folks, but in the meantime, it's easy to
find via lore, e.g., 3/5 has:

  Message-Id: <1662713084-8106-4-git-send-email-quic_krichai@quicinc.com>

so the lore URL is:

  https://lore.kernel.org/r/1662713084-8106-4-git-send-email-quic_krichai@quicinc.com

and the thread overview is at the bottom.

I use this incredibly handy mutt hook that adds lore URLs to emails
directly when viewing them: https://github.com/danrue/lorifier

Bjorn

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
