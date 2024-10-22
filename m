Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D04D8D1CDA1
	for <linux-phy@archiver.kernel.org>; Tue, 22 Oct 2024 05:35:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aH1jnrNuyLQ6H10EAbputEEeKtPXYmCGj9g6a+RP2BI=; b=pUxBUQxnv3fchh
	YGIH7+AnoVSi8BxgpfDRfDGGiEFdkc4Z18q9hXJN4TP2fTaYTAagdCxeMPR9dW25GeC5mehVsTajC
	F/tlNIoBMNX9OU3vbEbe8CzoEL7rWQQo3pb0xrhr5X4XOpFNVrRQmAB6ok+zuSLqOs+uR1lgzZnfn
	i97S509ntev+IFGtOJk78QL0udE00XTgWrKlGLdwFPQlT4q3Ghb1QkBvaQizEqYi6pV4xLjai62J2
	22DkIcT95dEPO9dS2ljzhSfw1AGCPj6bst9ZRJkrHGk0r05mglq1O0tUZ4Ble4RfecjQMH102RQIs
	vv7+AKiVKHB6+R5abcww==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t37YR-00000009fsn-2NfR;
	Tue, 22 Oct 2024 05:35:39 +0000
Received: from nyc.source.kernel.org ([2604:1380:45d1:ec00::3])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t37Uu-00000009euT-0JOV;
	Tue, 22 Oct 2024 05:32:01 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id 21D3DA43D8C;
	Tue, 22 Oct 2024 05:31:50 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8BC6BC4CEC3;
	Tue, 22 Oct 2024 05:31:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729575118;
	bh=mh9QedYCt3HTFEzVMeEAHY0QnNAXySFrFQF8d9IlB+w=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=V+SJPPK/5nh6LhJWRpPxB9xZMuL2jDS9P+9GqGwxSkqUc9JWxxTOt69I3UQ77dh63
	 /KaoOZOVuw+s2LSbHKDu8iiA+mDXNHNbYW3UNOnaCm+QRJiDLqXuyX2l4/rz1SJWbj
	 htCH69dVv7EdR0sbrfgWdD2QEZIvxlm/zpivoljuTk9OAeuqGBatK+4KIjifST2lWW
	 OWWG80X6U2S38jExpCoBOe7xMUl9YYQ7bmI/RGsbM90bbO4nHk2GAQ1y+rj8XNO+B5
	 9RKf+moU9BZXTs16ZnR96o2iBfSSZUHRzMT+nWgYfiWVxU1Pwe6mvSRCg8aToCI8dm
	 G+hPNKYTW9QHA==
From: Vinod Koul <vkoul@kernel.org>
To: Frank Li <Frank.Li@nxp.com>
Cc: festevam@gmail.com, hongxing.zhu@nxp.com, imx@lists.linux.dev, 
 kernel@pengutronix.de, kishon@kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
 linux-phy@lists.infradead.org, marcel.ziswiler@toradex.com, 
 s.hauer@pengutronix.de, shawnguo@kernel.org, stable@vger.kernel.org
In-Reply-To: <20241021155241.943665-1-Frank.Li@nxp.com>
References: <20241021155241.943665-1-Frank.Li@nxp.com>
Subject: Re: [PATCH v2 1/1] phy: freescale: imx8m-pcie: Do CMN_RST just
 before PHY PLL lock check
Message-Id: <172957511545.488725.11335675052541592569.b4-ty@kernel.org>
Date: Tue, 22 Oct 2024 11:01:55 +0530
MIME-Version: 1.0
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241021_223200_209918_4CAE8D9D 
X-CRM114-Status: UNSURE (   5.78  )
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


On Mon, 21 Oct 2024 11:52:41 -0400, Frank Li wrote:
> When enable initcall_debug together with higher debug level below.
> CONFIG_CONSOLE_LOGLEVEL_DEFAULT=9
> CONFIG_CONSOLE_LOGLEVEL_QUIET=9
> CONFIG_MESSAGE_LOGLEVEL_DEFAULT=7
> 
> The initialization of i.MX8MP PCIe PHY might be timeout failed randomly.
> To fix this issue, adjust the sequence of the resets refer to the power
> up sequence listed below.
> 
> [...]

Applied, thanks!

[1/1] phy: freescale: imx8m-pcie: Do CMN_RST just before PHY PLL lock check
      commit: f89263b69731e0144d275fff777ee0dd92069200

Best regards,
-- 
~Vinod



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
