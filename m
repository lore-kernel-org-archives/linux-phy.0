Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 85099ECAAA1
	for <linux-phy@archiver.kernel.org>; Fri, 28 Oct 2022 16:10:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4kyUDDW31FDtCsVBit9VO/Ta6NiA3x9uOwfzB7q0a/I=; b=kNhO1cuXyx/IRB
	rmVmEnL73o89Ige2ACPqJ8AxAdr+mdSZF88ltHRh6KAZZnmjMZjHfg+Rt+6OMgfRhSp0qvxrENYB/
	fBB2DTfup/JHBGVlVyGCz85udKZQY0ZIGZAO9H7nQDRIJQc+VXbV96e9o08Y3U/Q5ghUvaLTv4wgB
	15nI+D5Gc2q9N2NW8XGJzGpOpiYsD6/D1P9PSlepf0aMCUCxFRy7q2QYhd7O6ReCYo37Rmz2Ia4i8
	rx6HgYfxT39GqdgLvmuZM/ZWUzem84HiTo29H7B7uru3kI7ARcRsGcbzcZXkrKMapVRGZHHfvOJu8
	AimwXeRNhJBQxvpTBVpA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ooRw4-000oDQ-VJ; Fri, 28 Oct 2022 16:10:20 +0000
Received: from sin.source.kernel.org ([2604:1380:40e1:4800::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ooRw1-000oAx-SY
	for linux-phy@lists.infradead.org; Fri, 28 Oct 2022 16:10:19 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sin.source.kernel.org (Postfix) with ESMTPS id 888E1CE2C25;
	Fri, 28 Oct 2022 16:10:14 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B0A27C433C1;
	Fri, 28 Oct 2022 16:10:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666973412;
	bh=UpjgFXWLdClvg90SKzBbXOWn0TxzW7/wabW66Ubp1QM=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=h7kkAmfe8cDl+/oZoJOJY9Ytix1b+W4TrGXdNCIm5TI7FvzaaLkLfcpLYivHJuAlL
	 PROK9roAnNak2Xk0MUZQDicxSn8NZUVC//z9vP5SNHDB4VtIPIw5bIccaAxCOfdV/T
	 DzYd+5qlnwK8UIO98QljqK8xeLaula1Auc5uR5KDOAmsu5OOPzzr77gX3TsldoAJQ+
	 T4tOjyP+n3PCFKX1y3D5+B8p9RDXpQboXiMRF9m7brSmqNSJafx4xU7fRKO4QmlPTx
	 RwKu3NsmtxgE7sDF73AOvrwz8NMc/dWtgJZLUspqOmE6+OZCfJ/0FRlDQ/D1AgRuKD
	 nKw+Y9Xxh31DA==
Received: from johan by xi.lan with local (Exim 4.94.2)
	(envelope-from <johan@kernel.org>)
	id 1ooRvi-000789-Tn; Fri, 28 Oct 2022 18:09:58 +0200
Date: Fri, 28 Oct 2022 18:09:58 +0200
From: Johan Hovold <johan@kernel.org>
To: Rob Herring <robh+dt@kernel.org>
Cc: Johan Hovold <johan+linaro@kernel.org>, Vinod Koul <vkoul@kernel.org>,
	Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@somainline.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 11/13] dt-bindings: phy: qcom,qmp-usb: fix sc8280xp
 binding
Message-ID: <Y1v+1gXaipKQqYOo@hovoldconsulting.com>
References: <20221028134407.19300-1-johan+linaro@kernel.org>
 <20221028134407.19300-12-johan+linaro@kernel.org>
 <CAL_JsqL+8OXb_0qE20wA-+Dkjqx1UjDTXiWG2CKp7=GkKeis0A@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAL_JsqL+8OXb_0qE20wA-+Dkjqx1UjDTXiWG2CKp7=GkKeis0A@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221028_091018_281161_5D3ECBD1 
X-CRM114-Status: GOOD (  11.78  )
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

On Fri, Oct 28, 2022 at 08:58:24AM -0500, Rob Herring wrote:
> On Fri, Oct 28, 2022 at 8:44 AM Johan Hovold <johan+linaro@kernel.org> wrote:
> >
> > The current QMP USB PHY bindings are based on the original MSM8996 PCIe
> > PHY binding which provided multiple PHYs per IP block and these in turn
> > were described by child nodes.
> 
> Missing the DT list, so checks don't run and it's not in my review queue.

Sorry about that.

I've resent this series now as it has some minor changes to the binding,
but I believe the corresponding PCIe series should be good to go without
a resend (bindings reviewed by Krzysztof and presumably already
processed by the bot).

Johan

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
