Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7D4C0C3ABCB
	for <linux-phy@archiver.kernel.org>; Mon, 16 Sep 2024 23:30:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nCWmmw97qazfIEuzeags37/C2h8zDDBA04WQKS/8Pac=; b=vZlMlgTEsGj9sH
	jTfHPJW2ZRZApwi3MgggeL7lagNxLeDFXHEtCY4n/BbNoeH0hw4KAkSXD5cjrPtUi3dbk+sNpiWe2
	ix7LEFW9R8TxxqCTcHBJ++ngKtxE0xLSHu1XSVaJngOYDkcL8lBi8ZqAsFviF8nK06+MdbAe0s9mG
	rWWuZNjRtx+PfIdd1NEn8Zco7bQrzAyHWLgx6TIkuTO57EgUibs/ZEtiba7os24faLG01651nZJ16
	WxRpVncotNxJb7l67SyLIunbXI+GWjDJv2nj35trvsMeSA/KUHy7FnsjeF0iDEm07Yzj2wexcXOKA
	uOqRXNv2LQvr0l8adJ/A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1sqLAa-0000000552p-0IaE;
	Mon, 16 Sep 2024 23:30:12 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1sqLAX-0000000552B-26I3
	for linux-phy@lists.infradead.org;
	Mon, 16 Sep 2024 23:30:10 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 351D25C26E1;
	Mon, 16 Sep 2024 23:30:05 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 69AF5C4CEC4;
	Mon, 16 Sep 2024 23:30:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726529408;
	bh=TUkgaZ3dMw+kNGlchye2L7aI6kYBpyeU4zUD7YkdJtU=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=D0v5i7vvo91LOBdRmrIJZ8SGGk0F8srJi5booIvIlkP+lJPrLLUJNMSxaQq7gLPFV
	 a0tih85h5eEEZJhSZI+xRu+vwsnDN6nxX46TWv7QsPRwRAJp+TzBfgIZyJMFS6i0im
	 pO6itBUdzWsY3xHRZBeWlOwev+apInk2Szt2UA1+Lyi6Eq1iI+BqqCjEVqWxRHRaRM
	 3LA5LrkFfos2h3reJ+H92m8kjaqQEhzim3ionprHIly1PeFZedyYnzNGyqTPAZoQgp
	 ns5tfsbd8Q0cVA3dwW3/SFW1Z99LuIzgzpP7f30P39Zxb1xjhjWLGABRxKq9W639my
	 w2HeAmTEE9Oeg==
Message-ID: <c4696a9d-e3f2-4ff5-8323-84f75f2f1a68@kernel.org>
Date: Tue, 17 Sep 2024 01:29:58 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 3/5] phy: qcom: qmp: Add phy register and clk setting
 for x1e80100 PCIe3
To: Qiang Yu <quic_qianyu@quicinc.com>, manivannan.sadhasivam@linaro.org,
 vkoul@kernel.org, kishon@kernel.org, robh@kernel.org, andersson@kernel.org,
 konradybcio@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
 mturquette@baylibre.com, sboyd@kernel.org, abel.vesa@linaro.org,
 quic_msarkar@quicinc.com, quic_devipriy@quicinc.com
Cc: dmitry.baryshkov@linaro.org, kw@linux.com, lpieralisi@kernel.org,
 neil.armstrong@linaro.org, linux-arm-msm@vger.kernel.org,
 linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-pci@vger.kernel.org, devicetree@vger.kernel.org,
 linux-clk@vger.kernel.org
References: <20240913083724.1217691-1-quic_qianyu@quicinc.com>
 <20240913083724.1217691-4-quic_qianyu@quicinc.com>
Content-Language: en-US
From: Konrad Dybcio <konradybcio@kernel.org>
In-Reply-To: <20240913083724.1217691-4-quic_qianyu@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240916_163009_617901_CA636CC2 
X-CRM114-Status: UNSURE (   7.81  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

On 13.09.2024 10:37 AM, Qiang Yu wrote:
> Currently driver supports only x4 lane based functionality using tx/rx and
> tx2/rx2 pair of register sets. To support 8 lane functionality with PCIe3,
> PCIe3 related QMP PHY provides additional programming which are available
> as txz and rxz based register set. Hence adds txz and rxz based registers
> usage and programming sequences. Phy register setting for txz and rxz will
> be applied to all 8 lanes. Some lanes may have different settings on
> several registers than txz/rxz, these registers should be programmed after
> txz/rxz programming sequences completing.
> 
> Besides, x1e80100 SoC uses QMP phy with version v6.30 for PCIe Gen4 x8.
> Add the new register offsets in a dedicated header file.
> 
> Signed-off-by: Qiang Yu <quic_qianyu@quicinc.com>
> ---

Reviewed-by: Konrad Dybcio <konradybcio@kernel.org>

Konrad

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
