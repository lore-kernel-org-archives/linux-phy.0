Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A6005C6FD1D
	for <linux-phy@archiver.kernel.org>; Tue,  4 Apr 2023 20:11:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Date:To:Cc:From:Subject:References:
	In-Reply-To:MIME-Version:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UW2/wsHTUUNtjKRozvG0DgoCNzI4ByLYvGHJVE3V/hI=; b=AKig4oXFFIYjwx
	zvDfa3MAzw+R1OXt72FmjvqKUzkC8WQoLrR+SG55Tzj/cva1Ld0+372JErsIg1syjJwekfhX6bSDV
	//PI3ObRu/9VhGWqn+BNb9iXx8UhOo+utXO7V2M5RB+ryzT6hC9s8D/Z4TRV+ewUWZR03k/Zp500v
	H+IJqUHb4lpqsvbcHrl6eGykT4AvM6Sgln1w23hepbmqRoimDly/E5Lt2VPjmBCTNcEQomhf8rg6V
	XtyXnvdDNX2xe51S7LJkh7oQPWNL4nTdMxSJBd39Diqvj/SWbblZikYh1t9bD8qGqwe5/jP45wuvX
	7zZPbMj8Ylam0DjkDr2A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pjn0O-002n0w-0X;
	Tue, 04 Apr 2023 20:11:48 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pjn0L-002n0U-3D
	for linux-phy@lists.infradead.org;
	Tue, 04 Apr 2023 20:11:47 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 60D7D63344;
	Tue,  4 Apr 2023 20:11:45 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id AEF5CC433D2;
	Tue,  4 Apr 2023 20:11:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1680639104;
	bh=6ehy8G3pD6IYMdwCFbrMYKYPGv4TXuD5wVAph2mLKS0=;
	h=In-Reply-To:References:Subject:From:Cc:To:Date:From;
	b=iuZEXUqZ9ZwxZvj7eZoUbOiQ+cu047t6Quefhy5dMvtSvhC4S3YsPk/e4pyh6c7+M
	 3aUtAv+50FpMovtZZrgulMWV2Yq1OK2iYyyzkoOrk7ROs/WfcJAuhFXko71PpAWv5q
	 bx0/FghLYgahH5Sq44vFjONX+Rg8HWcrWOmkKX4HFhiYJLzgjW0HKGzqwfJvuH5wnS
	 BEbPTPeUhyu7l+VUz96pQRRukOekbAGkDZxkPbpnOTEyhtsBqgVSIHV3EZuMG0YXk8
	 etzNmtUNHXDuWlcnwfHBRKmu/ZjISwbK4xM+LaIGdY9C77ZXQYnpqpuRK5KoX70kRe
	 ifU3lGCiLKm5A==
Message-ID: <2f8d6e564d8f0b8ea90b5c1046152efa.sboyd@kernel.org>
MIME-Version: 1.0
In-Reply-To: <20230404164828.8031-2-quic_devipriy@quicinc.com>
References: <20230404164828.8031-1-quic_devipriy@quicinc.com> <20230404164828.8031-2-quic_devipriy@quicinc.com>
Subject: Re: [PATCH V2 1/9] dt-bindings: clock: Add PCIe pipe clock definitions
From: Stephen Boyd <sboyd@kernel.org>
Cc: quic_srichara@quicinc.com, quic_gokulsri@quicinc.com, quic_sjaganat@quicinc.com, quic_kathirav@quicinc.com, quic_arajkuma@quicinc.com, quic_anusha@quicinc.com, quic_ipkumar@quicinc.com
To: Devi Priya <quic_devipriy@quicinc.com>, agross@kernel.org, andersson@kernel.org, bhelgaas@google.com, devicetree@vger.kernel.org, kishon@kernel.org, konrad.dybcio@linaro.org, krzysztof.kozlowski+dt@linaro.org, kw@linux.com, linus.walleij@linaro.org, linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org, linux-gpio@vger.kernel.org, linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org, linux-phy@lists.infradead.org, lpieralisi@kernel.org, mani@kernel.org, mturquette@baylibre.com, p.zabel@pengutronix.de, robh@kernel.org, vkoul@kernel.org
Date: Tue, 04 Apr 2023 13:11:42 -0700
User-Agent: alot/0.10
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230404_131146_081954_27BC2DEC 
X-CRM114-Status: UNSURE (   5.47  )
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

Quoting Devi Priya (2023-04-04 09:48:20)
> Add PCIe pipe clock definitions for IPQ9574 SoC
> 
> Co-developed-by: Anusha Rao <quic_anusha@quicinc.com>
> Signed-off-by: Anusha Rao <quic_anusha@quicinc.com>
> Signed-off-by: Devi Priya <quic_devipriy@quicinc.com>
> ---

Acked-by: Stephen Boyd <sboyd@kernel.org>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
