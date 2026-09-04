Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2A6B1C624DE
	for <linux-phy@archiver.kernel.org>; Fri,  4 Sep 2026 08:05:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=H9asbnKJhQ7XlXCEzULZjAhw6kqbCvDqg887HP9AxFw=; b=UHFl6TZfdqccDk
	SIFKXA1hPDDu4md0uZ1GDttO4kaGzYn/VBcCp/XOJF2hcHwH4vDgqHNwHGilazi89iYcJJyYmcyfs
	Bo2pFq8GbQgXGDTyCiBYzV+kNGN/0/JLRxYoQzuqIeatT03CA3WEqVNGFwFUlxoAJgSUaPXFT5XgK
	YM9jve77gEwpVZ1eMaDMs14iYouqhy6jqijUWoi3U7JJclol8PLSNZtpKtDvwoKG4JY7NR5WWgXrQ
	/pWC1IoTO1ducDH0wwGSSQ8uzsUHn+FJuduRjhGzNqqsJe+yxP2A+nYztf4IbxQkxHgxKcTu9IMlY
	n4xncjoiMuxqjC0EqqJQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x2Ov9-00000001Kl4-3Zhr;
	Fri, 04 Sep 2026 08:05:11 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x2Ov8-00000001Kkh-2cyy
	for linux-phy@lists.infradead.org;
	Fri, 04 Sep 2026 08:05:10 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 1609060211;
	Fri,  4 Sep 2026 08:05:10 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B88C81F00A3D;
	Fri,  4 Sep 2026 08:05:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1788509109;
	bh=TqNLCesX2SNrm7Jswp+E1v9760B2VFDRX1NjrjFhDbA=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=L+wJVPa01ltnhm6yS8sGMmIdlggoMUkPoGV2isQtt9tvcl8J6ZiNou1NCbED3W601
	 /SNBM0RgYXMNQ0BldNLlX1oZb51HBrlFbSyDsQ67bB2xnFysO8saIZ3cGyuVEPPj6X
	 Jgg/704ElwA675dE66f5Gl7Jhglkk5VA72jhZXjLjsHlzWvzXOfNUTmGlSxX0vGsGa
	 C/QqIQDWhpp3FzHk7r++EU4BYM4rXIyFL4Kx1DVh4GmBGFuIa1up6fkZs3Yw+S/b4o
	 6LlG7ST1AnUFhD1YTgZMltJY6g82y+5yqxj22KKe97tTes2MiUwRWEviVk8QI+96ib
	 Uu39LctKoYFtg==
Received: from johan by xi.lan with local (Exim 4.99.4)
	(envelope-from <johan@kernel.org>)
	id 1x2Ov5-00000006jvW-0Kia;
	Fri, 04 Sep 2026 10:05:07 +0200
Date: Fri, 4 Sep 2026 10:05:07 +0200
From: Johan Hovold <johan@kernel.org>
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Cc: Manivannan Sadhasivam <mani@kernel.org>,
	Konrad Dybcio <konradybcio@kernel.org>,
	Vinod Koul <vkoul@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org,
	linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
	usb4-upstream@oss.qualcomm.com,
	Raghavendra Thoorpu <rthoorpu@qti.qualcomm.com>,
	Mika Westerberg <westeri@kernel.org>, Sven Peter <sven@kernel.org>,
	Abel Vesa <abel.vesa@oss.qualcomm.com>,
	Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Subject: Re: [PATCH v4 3/5] phy: qualcomm: qmp-combo: Add preliminary USB4
 support
Message-ID: <app7s9GZySBj7Mzs@hovoldconsulting.com>
References: <20260820-topic-usb4phy-v4-0-aec9d2cb31f6@oss.qualcomm.com>
 <20260820-topic-usb4phy-v4-3-aec9d2cb31f6@oss.qualcomm.com>
 <iynrogny3didip7cui3ce3yq3woaqzrr7f4aqdzvls4j4mslfn@aww5qjpy3gdx>
 <b326edbf-fe34-426b-af19-912edc18ba84@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <b326edbf-fe34-426b-af19-912edc18ba84@oss.qualcomm.com>
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

On Fri, Sep 04, 2026 at 09:36:04AM +0200, Konrad Dybcio wrote:
> On 9/1/26 2:44 PM, Manivannan Sadhasivam wrote:
> > On Thu, Aug 20, 2026 at 04:24:12PM +0200, Konrad Dybcio wrote:
> >> From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> >>
> >> Some Combo PHYs (so far only on SC8280XP, X1E80100 and Glymur), come in
> >> a flavor called USB43DP, which as the name implies, features USB4, USB3
> >> and DP signal processing capabilities. In that architecture, USB3 and
> >> USB4 PHYs share the same USB_PLL while featuring separate logic spaces.
> >> The DP part is roughly the same as on the instances without USB4.
> 
> [...]
> 
> >> +	case QMPPHY_MODE_USB4:
> >> +		writel(USB4_MODE, com + QPHY_V3_DP_COM_PHY_MODE_CTRL);
> >> +
> >> +		/* bring both QMP USB and QMP DP PHYs PCS block out of reset */
> >> +		/* TODO: disable DP PLL if there are no active tunnels after router setup */
> > 
> > 100 column width generally applies to code, not comments. Comments should still
> > be wrapped to 80 columns.
> 
> I believe this isn't a real concern.. checkpatch certainly doesn't care:
> 
> # LONG_LINE_COMMENT     a comment starts before but extends beyond $max_line_length
> # LONG_LINE_STRING      a string starts before but extends beyond $max_line_length
> # LONG_LINE             all other lines longer than $max_line_length
> 
> (all take the same value, preset to 100 at the top of the file)

Checkpatch is just a dumb tool. The coding style says the preferred
limit is 80 chars unless breaking it improves readability. And that
exception generally does not apply to comments (e.g. unless it contains
a URL or similar).

Johan

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
