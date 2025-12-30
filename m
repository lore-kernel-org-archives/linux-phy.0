Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3C0BCEE498F
	for <linux-phy@archiver.kernel.org>; Tue, 30 Dec 2025 16:56:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=C2IXhPWklxRtFiNCoBuucxH1wOoZtRN1QCDal25KfRw=; b=lyTMi8YoB+trBy
	tw96AYQLkOT2oX9jo3p4khr0mjP2tK5sQ5W7q98hg5taPuBaxGdgqTvVfHg+Mb1HhaAmP3rJp3gxF
	PKmiM7+ivoF5Gge4XTc9c8L5pNa80KjDde3jw974K0aTLbb/urZJNx3vw8sqbEEgite+iSRTGg2pt
	XpeT67h2ijwWgYG8xGh9MihjQ2TgJ1zcWW7CoG8+c8dD90ir3g9kY0RO0tnfC4/cw2nYGzAyNtvSd
	SJgCtJHWWogEmrwxl0kCYLAKL074qAKmFJb96ZIHjyfzjehScopUrGB39umHJQAkxVPM+ZvzqKSgS
	eYEmjfeyWtIowzEqXnrQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vad1T-000000055JY-2kZr;
	Tue, 30 Dec 2025 16:56:39 +0000
Received: from pidgin.makrotopia.org ([2a07:2ec0:3002::65])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vad1Q-000000055Ii-368v;
	Tue, 30 Dec 2025 16:56:37 +0000
Received: from local
	by pidgin.makrotopia.org with esmtpsa (TLS1.3:TLS_AES_256_GCM_SHA384:256)
	 (Exim 4.99)
	(envelope-from <daniel@makrotopia.org>)
	id 1vad1A-000000000rM-1zMA;
	Tue, 30 Dec 2025 16:56:20 +0000
Date: Tue, 30 Dec 2025 16:56:11 +0000
From: Daniel Golle <daniel@makrotopia.org>
To: Julia Lawall <Julia.Lawall@inria.fr>
Cc: yunbolyu@smu.edu.sg, kexinsun@smail.nju.edu.cn, ratnadiraw@smu.edu.sg,
	xutong.ma@inria.fr, Qingfang Deng <dqfext@gmail.com>,
	SkyLake Huang <SkyLake.Huang@mediatek.com>,
	Chunfeng Yun <chunfeng.yun@mediatek.com>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Matthias Brugger <matthias.bgg@gmail.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	netdev@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-mediatek@lists.infradead.org, linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH] phy: adjust function name reference
Message-ID: <aVQEKwj38I1Coj2L@makrotopia.org>
References: <20251230140601.93474-1-Julia.Lawall@inria.fr>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20251230140601.93474-1-Julia.Lawall@inria.fr>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251230_085636_798189_93A421A3 
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

On Tue, Dec 30, 2025 at 03:06:01PM +0100, Julia Lawall wrote:
> There is no function clk_bulk_prepare_disable.  Refer instead to
> clk_bulk_disable_unprepare, which is called in the function
> defined just below.
> 
> Signed-off-by: Julia Lawall <Julia.Lawall@inria.fr>

Thanks for spotting this obviously wrong comment!

Reviewed-by: Daniel Golle <daniel@makrotopia.org>

> 
> ---
>  drivers/phy/mediatek/phy-mtk-xfi-tphy.c |    2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/phy/mediatek/phy-mtk-xfi-tphy.c b/drivers/phy/mediatek/phy-mtk-xfi-tphy.c
> index 1a0b7484f525..100a50d0e861 100644
> --- a/drivers/phy/mediatek/phy-mtk-xfi-tphy.c
> +++ b/drivers/phy/mediatek/phy-mtk-xfi-tphy.c
> @@ -353,7 +353,7 @@ static int mtk_xfi_tphy_power_on(struct phy *phy)
>   * Disable and unprepare all clocks previously enabled.
>   *
>   * Return:
> - * See clk_bulk_prepare_disable().
> + * See clk_bulk_disable_unprepare().
>   */
>  static int mtk_xfi_tphy_power_off(struct phy *phy)
>  {
> 
> 

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
