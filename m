Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5F020C43334
	for <linux-phy@archiver.kernel.org>; Fri, 17 Jun 2022 04:39:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:CC:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SkOABivqdGgvBei/D767aPI5a7GfRoVOkoA4nxPcATU=; b=xFMDq9DEo8tADN
	xUIzPvPh+MuttwVjauB/+VmlciiGw6A10JTXFoxHUTR1EqIbEp7MTS7guSqPTkHYJTkXFkIBr6qsl
	y2ZhG0vpbwKhKzFfmncAu4YEnWNsSpMS2inooQvvHKjjHgcF4sCR8hhSragubzDQhwJGmEMKaUNC3
	LSFos/fIhGrOVTayPUAAJ/eOhMrBeZqODvHjpPm1Xvz822o5nYCmpyRRAQ1WlE9okolTwRf9jVNaN
	oBdOGS3vP3eY0d2tkIH1PWphUSBXsNL84g8aZDP3UsSOvbNCx7s5jzSGMFwFpHDEVK0sUv42baCAN
	b+Peu9sh0aCI9Xl6FpDQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o23lH-005Rfq-Gw; Fri, 17 Jun 2022 04:39:11 +0000
Received: from alexa-out-sd-02.qualcomm.com ([199.106.114.39])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o23lF-005Rf9-Cy
	for linux-phy@lists.infradead.org; Fri, 17 Jun 2022 04:39:10 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=quicinc.com; i=@quicinc.com; q=dns/txt; s=qcdkim;
  t=1655440749; x=1686976749;
  h=message-id:date:mime-version:subject:to:cc:references:
   from:in-reply-to:content-transfer-encoding;
  bh=Ja0s88mcLhGaCnksbRpgCWF+y4ZCmmJXP7DCNkAt4Gk=;
  b=Q30/XnJM6BE59ByD67tV3AUtGOk1pcSDZolzxp4eUhOeXG8I6GssbOs4
   jRQX+/lYug9rAcdl3vWuORvXBFOHm41879Fiq9x1YUdLH1qKZTfn5PNNq
   ORMs7NPwIZ58E9ce+tkykUu6fOUIhIzUZjj8er7DJWB2rblkx+TZDmJjK
   8=;
Received: from unknown (HELO ironmsg02-sd.qualcomm.com) ([10.53.140.142])
  by alexa-out-sd-02.qualcomm.com with ESMTP; 16 Jun 2022 21:39:06 -0700
X-QCInternal: smtphost
Received: from nasanex01c.na.qualcomm.com ([10.47.97.222])
  by ironmsg02-sd.qualcomm.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 16 Jun 2022 21:39:06 -0700
Received: from nalasex01a.na.qualcomm.com (10.47.209.196) by
 nasanex01c.na.qualcomm.com (10.47.97.222) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.986.22; Thu, 16 Jun 2022 21:39:06 -0700
Received: from [10.216.62.99] (10.80.80.8) by nalasex01a.na.qualcomm.com
 (10.47.209.196) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.986.22; Thu, 16 Jun
 2022 21:38:59 -0700
Message-ID: <69ae40c9-1c23-2c1b-f4fd-d079fb3b2f84@quicinc.com>
Date: Fri, 17 Jun 2022 10:08:56 +0530
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.1
Subject: Re: [v9 0/3] Add QCOM SNPS PHY overriding params support
Content-Language: en-US
To: Vinod Koul <vkoul@kernel.org>
CC: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Rob Herring
	<robh+dt@kernel.org>, Andy Gross <agross@kernel.org>, Bjorn Andersson
	<bjorn.andersson@linaro.org>, Greg Kroah-Hartman
	<gregkh@linuxfoundation.org>, Stephen Boyd <swboyd@chromium.org>, "Doug
 Anderson" <dianders@chromium.org>, Matthias Kaehlcke <mka@chromium.org>,
	Wesley Cheng <quic_wcheng@quicinc.com>, <devicetree@vger.kernel.org>,
	<linux-arm-msm@vger.kernel.org>, <linux-usb@vger.kernel.org>,
	<linux-kernel@vger.kernel.org>, <linux-phy@lists.infradead.org>,
	<quic_pkondeti@quicinc.com>, <quic_ppratap@quicinc.com>,
	<quic_vpulyala@quicinc.com>
References: <1655095653-27892-1-git-send-email-quic_kriskura@quicinc.com>
 <YqvLrN+ZgC9QRbKE@matsya>
From: Krishna Kurapati PSSNV <quic_kriskura@quicinc.com>
In-Reply-To: <YqvLrN+ZgC9QRbKE@matsya>
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01a.na.qualcomm.com (10.52.223.231) To
 nalasex01a.na.qualcomm.com (10.47.209.196)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220616_213909_519284_DB9F9A07 
X-CRM114-Status: UNSURE (   5.12  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

On 6/17/2022 6:02 AM, Vinod Koul wrote:
> On 13-06-22, 10:17, Krishna Kurapati wrote:
>> Added support for overriding tuning parameters in QCOM SNPS PHY
>> from device tree. This parameter tuning is required to tune the
>> hs signal on dp/dm lines for electrical compliance to be successful.
> Why is [PATCH....] not appearing in title (hint dont touch these
> manually, use -v 9 in git format-patch to generate...
My bad. Missed it while pushing v9 patches. Will make sure to take care 
of this.
Regards,
Krishna,

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
