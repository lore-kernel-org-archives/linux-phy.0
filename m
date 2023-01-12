Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DF418C54EBE
	for <linux-phy@archiver.kernel.org>; Thu, 12 Jan 2023 17:14:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ekaUm2NKxAf1NKZUIp9Seu4Ys880dNfqW3u6A//9pJk=; b=j6dFPEZ6ARPg6n
	oFO+hPRPFHCe+eFI5xSaMGze6aXZ5wgoyIjMEn15TCG2fgAptWQe3AkEJY8d2jbzufUYoHLkiqQdB
	0r1KIMPBrZmve+NsuVG/IHDjwOSKf3LX7mGY8Ka0swhd0KCH39dcMgW4uujO1fhIhFLkbFZ3GZyQd
	+8UK//PUnAoOJfI6/nLcPIoiRGG2s31GhSzE6FB/bLRPClDtZQ6CAF1sD671DUsmXU4XuZHkJf1LR
	qgCS0c8NH7XVEoYTSRa1Re4lzL5X4mUwKZ0gdQ1Bl/pqUWKCiHT6ffpirXCEJ1qLtfMKai22ba3Qk
	9sSjzDfdiD7eoF0SZzRQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pG1AI-00Fz7M-8T; Thu, 12 Jan 2023 17:14:58 +0000
Received: from sin.source.kernel.org ([2604:1380:40e1:4800::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pG1AF-00Fz6W-Dk
	for linux-phy@lists.infradead.org; Thu, 12 Jan 2023 17:14:56 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sin.source.kernel.org (Postfix) with ESMTPS id 96258CE1EF3;
	Thu, 12 Jan 2023 17:14:50 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id EDE33C433D2;
	Thu, 12 Jan 2023 17:14:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673543688;
	bh=wGqSSUxokKljpXDAZgu+rOwnQLNJ0q0o/BKGpJxolX8=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=enJk3CSrILDdZ7OkTGHvaHJRpi9Z1nBhInZhmMARqPCCWKQpaVNL4MfF/O9sAXS/N
	 1ZkUk8LA6JFHfnEDV66ajL4lFj9Uo4sOUO5FEBGN6/+W/IgIjnFPj02wDQtn2zSfqB
	 ynkqz7pXBS9bKJYETPvLHGTi67KVP0Vm+xenJLl950WlAUQ0zGlsadDG9ByDLXLBIz
	 U7cia9DL+RTB8prtLYfDCDGR+5Xudac7PQuVEUrYFBAK6wakt22JRQRkA8u5f6LbFR
	 tA7iXm946YLTBuua4MKwueWeDEeXR401EKmhwGRar/InkX80sfaeK+M6C45POiscJ3
	 2PJwb/Qwb9aXw==
Date: Thu, 12 Jan 2023 22:44:44 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org
Subject: Re: [PATCH v3 0/2] phy: qualcomm: pcie2: register as clock provider
Message-ID: <Y8BABOGYm+y8BfsD@matsya>
References: <20221229115932.3312318-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20221229115932.3312318-1-dmitry.baryshkov@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230112_091455_656393_19D3DCDC 
X-CRM114-Status: UNSURE (   7.35  )
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

On 29-12-22, 13:59, Dmitry Baryshkov wrote:
> On Qualcomm QCS404 platform the PCIe2 PHY provides PIPE clock to the gcc
> (Global Clock Controller). Register the PHY as clock provider.

Applied, thanks

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
