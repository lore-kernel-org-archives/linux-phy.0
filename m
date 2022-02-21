Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 35716C433EF
	for <linux-phy@archiver.kernel.org>; Mon, 21 Feb 2022 05:49:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:CC:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=E4G+EjMSEXylybVDAlducGfA6WZGk2/oORokY/PnoDU=; b=1FDXEYHrbfNTbp
	7dgDI+LsV14HEaxJrbyTrubsOdt2ADKDNjrofPE/xA58xrDWfv8V2azu7RiPhReEs2RQWykWIByxi
	lO26MsBzDX5FIe3RblBIAlXk1z7TzLoh/b/0qOf7q2YXbK7JMiDXq7de+1M1/bPNx1KrYcwUYZN1n
	Es3I8mJabsafC3e62jj8VETlNw71YFDGsm6WkmkM8dCOsWF9MZZRXAJ32tPkXt9pPcAcwlUOOPwpG
	AVrHZG8oWPwvc0J5JrVCXOe65PxUTpyg2CdSHEonV+sfCpIUEWuraTmSnlL5kYnAHsCuudoM7L1ql
	glYT1zEzOSq0IlL9Nn5Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nM1Zr-003Xm1-ML; Mon, 21 Feb 2022 05:49:39 +0000
Received: from alexa-out-sd-02.qualcomm.com ([199.106.114.39])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nM1Zo-003XkG-Jm
 for linux-phy@lists.infradead.org; Mon, 21 Feb 2022 05:49:37 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=quicinc.com; i=@quicinc.com; q=dns/txt; s=qcdkim;
 t=1645422576; x=1676958576;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=YMNOqWJhLBUNCUljk8vXY6ouIh5oq9skN6nUvVW8b0g=;
 b=stH9Wh9w9IPNFIqCHJaLcKcfgelhOJnnDFMgJE+PUvN7OvcK35jaauM/
 HQuFDnMORdJJenAWBrqlPupRz9hZv4/uZlFOXO6P/6bYBb8ZT1cVJ5bGq
 YFMngGAxYiX08HZJQnHXWLI/JmAmIdA97LeSNhwSZMWnbMfU5gCQt0g/N k=;
Received: from unknown (HELO ironmsg02-sd.qualcomm.com) ([10.53.140.142])
 by alexa-out-sd-02.qualcomm.com with ESMTP; 20 Feb 2022 21:49:34 -0800
X-QCInternal: smtphost
Received: from nasanex01c.na.qualcomm.com ([10.47.97.222])
 by ironmsg02-sd.qualcomm.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Feb 2022 21:49:32 -0800
Received: from nalasex01a.na.qualcomm.com (10.47.209.196) by
 nasanex01c.na.qualcomm.com (10.47.97.222) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.986.15; Sun, 20 Feb 2022 21:49:32 -0800
Received: from [10.216.51.15] (10.80.80.8) by nalasex01a.na.qualcomm.com
 (10.47.209.196) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.986.15; Sun, 20 Feb
 2022 21:49:25 -0800
Message-ID: <b009f64a-2516-e899-fb22-9973e78ffcd4@quicinc.com>
Date: Mon, 21 Feb 2022 11:19:21 +0530
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Subject: Re: [PATCH 1/3] dt-bindings: phy: qcom,usb-snps-femto-v2: Add phy
 override params bindings
Content-Language: en-US
To: Pavan Kondeti <quic_pkondeti@quicinc.com>, Stephen Boyd
 <swboyd@chromium.org>
CC: Andy Gross <agross@kernel.org>, Bjorn Andersson
 <bjorn.andersson@linaro.org>, Dmitry Baryshkov <dmitry.baryshkov@linaro.org>, 
 Doug Anderson <dianders@chromium.org>, Greg Kroah-Hartman
 <gregkh@linuxfoundation.org>, Kishon Vijay Abraham I <kishon@ti.com>,
 Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>, Matthias Kaehlcke
 <mka@chromium.org>, Rob Herring <robh+dt@kernel.org>, Vinod Koul
 <vkoul@kernel.org>, Wesley Cheng <wcheng@codeaurora.org>,
 <evicetree@vger.kernel.org>, <linux-arm-msm@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>, <linux-phy@lists.infradead.org>,
 <linux-usb@vger.kernel.org>, <quic_ppratap@quicinc.com>
References: <1644952755-15527-1-git-send-email-quic_c_sanm@quicinc.com>
 <1644952755-15527-2-git-send-email-quic_c_sanm@quicinc.com>
 <f1b4b389-12f9-7c21-b117-f2fe6df58a89@linaro.org>
 <CAE-0n52G6Cu8douv_KuQEeVM-3vnwGT4dhai8kmiLJ4Fd9Qz8A@mail.gmail.com>
 <20220216034702.GA8486@hu-pkondeti-hyd.qualcomm.com>
From: Sandeep Maheswaram <quic_c_sanm@quicinc.com>
In-Reply-To: <20220216034702.GA8486@hu-pkondeti-hyd.qualcomm.com>
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01b.na.qualcomm.com (10.46.141.250) To
 nalasex01a.na.qualcomm.com (10.47.209.196)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220220_214936_690179_4C673FCD 
X-CRM114-Status: UNSURE (   9.61  )
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


On 2/16/2022 9:17 AM, Pavan Kondeti wrote:
> On Tue, Feb 15, 2022 at 06:10:45PM -0800, Stephen Boyd wrote:
>> Quoting Dmitry Baryshkov (2022-02-15 11:55:18)
>>> On 15/02/2022 22:19, Sandeep Maheswaram wrote:
>>>> Add support for overriding SNPS phy tuning parameters in device tree
>>>> bindings.
>>> This does not really benefit the users and does not help developers.
>>> Could you please change the dt bindings to specify values for
>>> thresholds, durations, impedance, etc. The values should be represented
>>> in the human units (e.g. us, Ohms, mV), not in the internal register
>>> 'bits' representation.
>> +1
> Agreed to this proposal.
>
> Sandeep,
>
> We have a similar implemention in QUSB phy driver. can we have something like
> that for SNPSHS PHY too?
>
> Thanks,
> Pavan
Okay. Will do in the next version.

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
