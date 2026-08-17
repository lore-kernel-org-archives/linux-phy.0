Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 41776C5DF66
	for <linux-phy@archiver.kernel.org>; Mon, 17 Aug 2026 13:46:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Oo1ClCLY+Yn6hMF6yCB/xfhKVFIxLO5kD/sMIdNQsKA=; b=bOiucVIrkkoFv6
	hvOS63VSH4Zqhx9dCOHr1OPkdVc9YZhSVX5yXrdjrdtfOJeoeK/5Abi7ldXS7fY1HOeJqeNzRXrJo
	jpwjCd3slokOrJvt6EmnnYR4lciA5aoeyyTfREu8JMgl4sTwrz668F93lLjBUq6wTHxQew2qzyRiC
	YiMV8OUl023QePtJT9x4W0rGOzTz1rPTuUv/Jw05CUjwu5fxf4KiMHKAaDjcNNxUnOF/odb1VoquH
	R1nCYzBANe3e5Xn0WFEineUDw2EwdbndoIe//FeN64wdzDxrHzSZ3ohv+7qqu9UgMWbskTE0LwZpp
	gL7EhufN9/SZf/P4JhlQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wvxfy-00000006Ew5-2puE;
	Mon, 17 Aug 2026 13:46:54 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wvxfw-00000006EvW-1wol
	for linux-phy@lists.infradead.org;
	Mon, 17 Aug 2026 13:46:53 +0000
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 67HD61uH2238777
	for <linux-phy@lists.infradead.org>; Mon, 17 Aug 2026 13:46:51 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	kisyPj7fMtLWJkmcw99zpDofFaR/K+W+XXZHVzkhkp4=; b=gPXBzSCMdklHUR/j
	P/l22k1ivbFZIoKX1COxhQUxMhWP9kjrYPYBo1rEoppXuUWKBH2/dZxzW9wJoaKs
	e7ZkkndIlh8UiMyOKdvTlpOxvTTicl/pAsXLmKDKv6jOGl53xx4PnJMeyLbnAVnX
	W4OZGB5yuaGncliC5bTWxfom5Uc4fTMA5MSN0wFoocFxA8x0D6XjS2WbxTsgFNY5
	87G7nh/FrJSR4FmSUZ4WGnydMnQV/ZGFPi7Fmk6R0YtXXqUzm3GhcRJTkIf2hPBa
	oc4Znwd6TFoFlgfXhIPzJ7yypzyWo809LuXQ5mMT3xTgjCMuSW8xDhpsIoppyHbw
	nNeMGw==
Received: from mail-vs1-f72.google.com (mail-vs1-f72.google.com [209.85.217.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4g3xyk965x-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 17 Aug 2026 13:46:51 +0000 (GMT)
Received: by mail-vs1-f72.google.com with SMTP id ada2fe7eead31-7530aaa7212so89028137.3
        for <linux-phy@lists.infradead.org>; Mon, 17 Aug 2026 06:46:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1786974410; x=1787579210; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=kisyPj7fMtLWJkmcw99zpDofFaR/K+W+XXZHVzkhkp4=;
        b=DrgQ9NydmRIvt+kU9c//Vd7IK+slDAnNrIBxfUDpXnlg4G7CZkjrHxmjabMbH3nP1H
         OgG6KwfY2WqdgF2pL31Z9xdaZgEfI17bvEIu/JtCTUoId9LAprn9iq6E2seaJ4dkrjRX
         ehprOYlTQnyaf+iwhIcPmeJIBOT6XWAtVbs3TTotf3yrXhVidsxXFtfwUeKq6+swcQxv
         b0bD5i+ccQa7DntRX0DHgBWv3J06jtHhyMjXWjhOBwBeXSZR2CokpBd58mz0XaTyEbnO
         Bt2DQsun8+e0DMyitDuZc2yxGRO8HRk+VpCeqeJDQUagapz6BrV//VTYoNmwhf23gbXd
         bq0w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1786974410; x=1787579210;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=kisyPj7fMtLWJkmcw99zpDofFaR/K+W+XXZHVzkhkp4=;
        b=P82qbjP6hw3NG/yw0Ku8s6MFk03ZhggTi99RUDaHX0ppVKXC3N0kSnCHnEn+yQUMU8
         1W2aGPVHzw4R8EuMMRU5pyI0GjIVpX1+Or6FzzteARTrIm1mnLPstZsMj+aEDRpaTqqN
         U06G1MfNjCO5DafXs++xC/HIRVwN5+U4SSxlqLxsKcNw25hRIfcPESqTj46enVTxhWvV
         8G2xm+WiyPY7b1WUY/e78DWqR7mxhcc3PyODWFyhb0bPRi5hQSgBYMc745eyv8nDHgMS
         aDkFUgT8ngmedAWQjMR2xc11pyZBtYN9Y6bN5Za4kIIN60xCOu96XreYpAFZ+EMu+oKC
         +2Ig==
X-Forwarded-Encrypted: i=1; AHgh+RrMjxhJXn6sZg76SzfMLuqxFGxi2M/OtTm+py6RxEUEdzPTJu+aCpDGucaH2mMmRblrPQg0JzRdybY=@lists.infradead.org
X-Gm-Message-State: AOJu0YygsvtGV4el85xq647C6HhNNQPVMQxLznKWnTgurGYcatb08nce
	y1nb4WvBk6nlTsmcSt50rXzSU5lJ77/RAtClQVUkgZyN0vTFQFkqiaesTnk+5Q7OYHxXQdrk5M3
	M4mWhyxOYln+uP10vMsezoAvzuIX/hAWdM7slfUGFf+eMcHNYZUTcG+mxSmxvScC458mZ
X-Gm-Gg: AR+sD10Nyl0ByGLpnTR+EwvP9gIU29Ba1B+WyX3x7NFE+IoZRF9Vc5jRQC8NMmnCGI4
	FvaPORndDhNZgu5P9LpDb1jgEZ8yaFVNdf3V8T7iFsASr+0S0lvdOg+msw/adDhU1rXett6FQ5J
	KetExsv22fCqW0oTTuusuWXAt43JV4aA69l2ihXZ0e6eRFsHJ/yXuOiy09mcitc/ZkRS6q8KZ7q
	JJG9lMebvXbmh+CCWsW/pSySHmEN3ZV2ghdM59DJbgQqyjs3Bdm4IwN2D7iYqjhqpL1IChkzj8t
	p8TdCA8rWdA/NSWutwuIvZS2786ER1m5OFZdDfeTKJUgUKr/hTJFKpjeBRfzLwPd0unvzWxV2Ag
	KfR6+CdOB/sZl+y+4noCLHBuX
X-Received: by 2002:a05:6102:5091:b0:72f:6669:286a with SMTP id ada2fe7eead31-76f2c540eb2mr1526702137.2.1786974410329;
        Mon, 17 Aug 2026 06:46:50 -0700 (PDT)
X-Received: by 2002:a05:6102:5091:b0:72f:6669:286a with SMTP id ada2fe7eead31-76f2c540eb2mr1526686137.2.1786974409935;
        Mon, 17 Aug 2026 06:46:49 -0700 (PDT)
Received: from [192.168.120.193] ([178.235.128.140])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-c2185b74059sm33753866b.38.2026.08.17.06.46.47
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 17 Aug 2026 06:46:49 -0700 (PDT)
Message-ID: <ff8874b2-6851-4c8b-b9bf-476b807bf91e@oss.qualcomm.com>
Date: Mon, 17 Aug 2026 15:46:47 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 01/14] dt-bindings: phy: Document the Qualcomm IPQ5332
 UNIPHY USB Super-speed PHY
To: George Moussalem <george.moussalem@outlook.com>,
        Krzysztof Kozlowski <krzk@kernel.org>
Cc: Vinod Koul <vkoul@kernel.org>, Neil Armstrong
 <neil.armstrong@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Praveenkumar I <quic_ipkumar@quicinc.com>,
        Varadarajan Narayanan <quic_varada@quicinc.com>,
        Philipp Zabel <p.zabel@pengutronix.de>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Wesley Cheng <quic_wcheng@quicinc.com>, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-usb@vger.kernel.org
References: <20260812-ipq5018-usb3-v2-0-8f355d7ff0ef@outlook.com>
 <20260812-ipq5018-usb3-v2-1-8f355d7ff0ef@outlook.com>
 <20260813-alluring-advanced-jackalope-55e5c1@quoll>
 <SN7PR19MB67369ED27F676F6197A0727A9DDB2@SN7PR19MB6736.namprd19.prod.outlook.com>
 <71cfe76b-ea84-47f8-9ff7-945d69efbdcd@kernel.org>
 <34503ae2-9c89-4773-af80-fa7b7439ff23@oss.qualcomm.com>
 <f13b0be6-bc1f-4024-9881-59f522566f64@oss.qualcomm.com>
 <SN7PR19MB6736C6F52894B351836F583D9DA72@SN7PR19MB6736.namprd19.prod.outlook.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <SN7PR19MB6736C6F52894B351836F583D9DA72@SN7PR19MB6736.namprd19.prod.outlook.com>
X-Proofpoint-GUID: V7P7stJUzU-Cr5wWgU28nFQudQigkPI0
X-Proofpoint-ORIG-GUID: V7P7stJUzU-Cr5wWgU28nFQudQigkPI0
X-Authority-Analysis: v=2.4 cv=dLaWXuZb c=1 sm=1 tr=0 ts=6a8310cb cx=c_pps
 a=DUEm7b3gzWu7BqY5nP7+9g==:117 a=PRfkaYvzSr8QmIIGAkY2Sg==:17
 a=IkcTkHD0fZMA:10 a=Sv0fKeRqtYgA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=ZpdpYltYx_vBUK5n70dp:22
 a=Jmm3y0j5io58rGE2ST8A:9 a=QEXdDO2ut3YA:10 a=-aSRE8QhW-JAV6biHavz:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwODE3MDEwNSBTYWx0ZWRfX/sIGWM5w+h2x
 zWlXAmb5NVpt7EavF9U/HhyZNBAv8U/BkyFCQCS7tJFadlN+b55hyvJRbX9LUhGBS64y0tQmGEL
 Z+rDPTh5GsYw3eCnOoYacIw2WhgNvTeAxb//tw2lePpJyyYDbkEWQFB9cPXXbFKNWD4BD9Cp54O
 b8YvI/CmCfu87R4KQip+2Do+SJPszzoraUZo6r7NtRJqk19JGJiK/F45qTW/s890B1Lg+mTQ28O
 EfxZ7Ed6lfLomuiCHR8fZtF3Ft4x9gqKZIG+OYUspoj7PEqVgM7zXHbw2O0hgg3f4ngMZsEfsLb
 kGKSJxJV24HRH1nUpRra+KHqvz0zZoT/1pzNzyvINoUqhmAs/PkRFof24r4605nr0KL8qyFVvgf
 jX7e6RiGarf92ze9V7vusf2iQU9Md6HOaReS2Qw4xJT7i4pkXqrH2b4qFqUPop1ThMSYWz3Fote
 o4MVOx3RdyRmoICkJ0g==
X-Proofpoint-Spam-Info: AW1haW4tMjYwODE3MDEwNSBTYWx0ZWRfX008ffZ3s3wbX
 7lyjgmwTgPR0UKNGW7nv3rJNKaV64HLHJqPBNEo90WbMKcHhZRvt+CYHCX+giuPfdUDwlcZLvyY
 vGLfrxL+7SDvdXFMjaHcg4iy2xOEzdM=
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-08-17_01,2026-08-12_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 phishscore=0 spamscore=0 lowpriorityscore=0
 priorityscore=1501 bulkscore=0 suspectscore=0 adultscore=0 malwarescore=0
 clxscore=1015 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2606150000
 definitions=main-2608170105
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260817_064652_633913_62E214D7 
X-CRM114-Status: GOOD (  14.02  )
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

On 8/17/26 2:45 PM, George Moussalem wrote:
> On 8/17/26 16:38, Konrad Dybcio wrote:
>> On 8/17/26 2:37 PM, Konrad Dybcio wrote:
>>> On 8/13/26 12:48 PM, Krzysztof Kozlowski wrote:
>>>> On 13/08/2026 12:28, George Moussalem wrote:

[...]

>> so the implementation, matching prior art for similar cases should be:
>>
>> - phy node with #phy-cells = <1>
>> - consumer takes a reference through phys = <&phy FOO_PCIE> or FOO_USB3
>> - new driver in drivers/phy/qualcomm to coordinate the two modes
> 
> Thanks for confirming it's one device. I'm already working on a new
> version using phy-cells and having the consumer select the phy type.
> 
> However: I'm adjusting the existing phy-qcom-uniphy-pcie-28lp.c as
> that's the driver currently used for PCIe only in both IPQ5018 and IPQ5332.
> So I'm adjusting it to register 2 PHYs and provide both PCIe and USB
> functionality. Any objections/concerns?

"UNIPHY" is a bit of a loose definition, I also see that name in relation
to DSI and ethernet, but I don't have a better suggestion

Konrad

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
