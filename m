Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 22ED1C61DD3
	for <linux-phy@archiver.kernel.org>; Mon, 31 Aug 2026 16:41:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/hI7YYQvhg9esmS5Egd4lXV3BzhPy+laELqUHZJlOSQ=; b=N5DefDkHHeMU1k
	HcUPa+vxwdid/waPMDPu8a2G+hlE7xPaBXpS/tAMxFtNi+COuTNGQkEwfKTu9CZvXZ2IeXK8eNGcQ
	CXlq22JrzhiwHIW9SJlbfRjp8WRNAvtzh2r8gYIYZgfGD4K1fPbLBTDC6SD/FwlzdVo6zYpOTkFGF
	tuADDd+FRHTaxd+bK9auS+0PoUv+59nULP9CHWx0V5rSi9iGeZIiV9hmo0jjDBNL6r6FnTL7W0uPs
	VfHIcxaP9aB9xObV+Uc7LhLg01rT/AeXfwz9oQt9Fzvna5pK3HqxurZvR+zeK/+JKz8lPev6BDizG
	FVpI1V0FvNeqsruDDDUw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x154F-0000000A5ef-1IzE;
	Mon, 31 Aug 2026 16:41:07 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x154C-0000000A5dw-1oJB
	for linux-phy@lists.infradead.org;
	Mon, 31 Aug 2026 16:41:05 +0000
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 67VFpuhR4152567
	for <linux-phy@lists.infradead.org>; Mon, 31 Aug 2026 16:41:03 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	5XCYPqQA2/de/ZdEUTzkwaR/TQwoMx1WEwb0RhWlBhc=; b=aUgEG5zH1OMt8PXk
	zvjhjP7vjmiyD9mOykEvoqf9abH6aYPyPVOGusQXFU6DHcWRcHahgEmYcOFxt/Sz
	iY4RWuZn/lhHvtDucofwfQ8j2mdeFETnPB/vZoxYMUtRYokPFTrso0l6YrDT0c6v
	qedfXKgH/sN15iVb+GZOcmS1Ik7x48hY+6a3tikokcsclnjX/nUwGKLlULPqKBsu
	g4lOALTfH94eDXh7qXqBGoQncz7pIBpysmvo6goxq02X9LeGHgEEeQiw69MyQrrl
	C8QjsUgrwxCWJ13Zwe8RRnvuZD86yCE8Ij40yEfMCDjZ3c206qDCAoF/DX3wGKEj
	hAJOng==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4gd6h9210s-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 31 Aug 2026 16:41:03 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-93494b1e35cso64830185a.0
        for <linux-phy@lists.infradead.org>; Mon, 31 Aug 2026 09:41:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1788194463; x=1788799263; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=5XCYPqQA2/de/ZdEUTzkwaR/TQwoMx1WEwb0RhWlBhc=;
        b=PtyTIKh1cw/tU3FQee/F31J4HCdvqrIk8OIthko2TsFORVZz/ZrecS9rvDjMovuX5G
         kurrFNOGaJkpcWt8utLAt5ylSSyOyvxL4NIH7Yy9g3dfCzsbgom0BgcyGPzk0jvP4jlM
         KKSwbLea48j+xv1aKHaoLScLeKrJoEK8xAmYyRLJxn7+rIr+wl+bsNGDG3MObEybPHja
         y03Gm5Mr72LaoFzE7MK9pch1IdO2XxRM471VqefpSavC4cHABpfh7E0E/tRcLr658uDt
         G3z9tmSteWaLIcYbrDR7IQMuM8bJpegX4D3b6LUIdY1e4C76OAz7kFxC4cNprRnnNh+1
         h6zg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1788194463; x=1788799263;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=5XCYPqQA2/de/ZdEUTzkwaR/TQwoMx1WEwb0RhWlBhc=;
        b=McB7Q2H0AH6MQv9sqSJOFg0ZS6LES9rsDY73oeMJZJ1eGcI3A/rDjJYRuskW0EKahe
         WoD8GTu4xUU+k1W39/W1wq2UE76aEhd9IkIFTC6EM8dX0HhYYpLRqbUTt4ry5Tx2Uwu1
         5JctxHErhxlWdrHiGzeOb56PoZQr6Lvf2bxZvfpE6N6+RgPnjW1YHP5aIP3Fijb2Lu9e
         u9bw051p9zIOlu4fJKX+0HAMtSlq6OVucrCKoP6OuN6VzER97dsbw710E5ZGy1NZngN8
         4zUlPFuqPhL1c2UsoLqEbEAXNtoXaeebOw7PJgfJJ7C20cosU/sL8/w6lpYs2bApnMaH
         m78w==
X-Forwarded-Encrypted: i=1; AHgh+RqObqNhEe2gGFysAZh9/WC8LtFi4FRpR8vLhTglOLxvS77uRxGHfJi7Zd0sFaQJdv2+Yp+WCnk+j0A=@lists.infradead.org
X-Gm-Message-State: AFuF++nhwrfh0NEYJcNfudr3HfQ6zi7/XGxVwjnkiNhtjclaBZZFkfE5
	Wc4zgWLBqvolxQBIlmhwn+ckt5y3J9igVti5v/TlgIp72MIVGbdgjImHeKnqJ6OBejkTlFeWP4g
	WAtuC9CDKxK/b+n1q999wa1n4v2bc4tnCL+iC6CyD3frVyp/vc/puYHeYUMIFdzq3vCx0
X-Gm-Gg: AR+sD12IQ0gXrp9+5rwiqRitpgAJfjH5QH7uCHqiKbj632DOJo4xQqp2XwZmUk1NUlu
	KmG9SaezRjK3F/o9ME3i87evpaEg4OdblenNp2cRiYmtc1RzveqW/8/2FFXb5OsITrfsRYMzeXC
	9oXScanzGd0WQJChZfeAynM4HDq7vCFsZkDmWaLC39xwEawxlJa3K6A6I1whP0YniMj4RrF22pb
	RllYIkYTkDp8CQPLxBCHyR6eLoapiq4WqqEvSXeoAOZMEyK1Fz1vbjaGgfBWAoykEksMWBD5eKU
	Qg0wBHs4PJKTn9wsLj6+/Lu0gXu/UP15mVyYf3s41sCVQFA1O14jTdO9N1ZhEqDuFZTHe69iiKu
	H0Qxxj8w35lT5mKfW2c64rQ==
X-Received: by 2002:a05:620a:90c5:20b0:939:48c8:656 with SMTP id af79cd13be357-93948c81290mr128480485a.1.1788194462833;
        Mon, 31 Aug 2026 09:41:02 -0700 (PDT)
X-Received: by 2002:a05:620a:90c5:20b0:939:48c8:656 with SMTP id af79cd13be357-93948c81290mr128474585a.1.1788194462308;
        Mon, 31 Aug 2026 09:41:02 -0700 (PDT)
Received: from [192.168.202.12] ([178.235.128.140])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-c2563c74bd8sm432590166b.40.2026.08.31.09.40.59
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 31 Aug 2026 09:41:01 -0700 (PDT)
Message-ID: <c1d13f41-e29e-41ee-b02a-b38013e4e7f2@oss.qualcomm.com>
Date: Mon, 31 Aug 2026 18:40:58 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH RFC/DO NOT MERGE 07/12] drm/msm/hdmi: Split PHY init from
 power up
To: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>,
        Rob Clark <robin.clark@oss.qualcomm.com>,
        Dmitry Baryshkov
 <lumag@kernel.org>,
        Abhinav Kumar <abhinav.kumar@linux.dev>,
        Jessica Zhang <jesszhan0024@gmail.com>, Sean Paul <sean@poorly.run>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Vinod Koul <vkoul@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Manivannan Sadhasivam <mani@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org,
        freedreno@lists.freedesktop.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org, Krzysztof Kozlowski <krzk@kernel.org>,
        linux-phy@lists.infradead.org
References: <20260828-drm-msm-hdmi-eliza-v1-0-67843277de17@oss.qualcomm.com>
 <20260828-drm-msm-hdmi-eliza-v1-7-67843277de17@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260828-drm-msm-hdmi-eliza-v1-7-67843277de17@oss.qualcomm.com>
X-Authority-Analysis: v=2.4 cv=W6UIkxWk c=1 sm=1 tr=0 ts=6a95ae9f cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=PRfkaYvzSr8QmIIGAkY2Sg==:17
 a=IkcTkHD0fZMA:10 a=Sv0fKeRqtYgA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=gowsoOTTUOVcmtlkKump:22
 a=nbnyxt4j9IoekFAbjR0A:9 a=QEXdDO2ut3YA:10 a=NFOGd7dJGGMPyQGDc5-O:22
X-Proofpoint-ORIG-GUID: sBlwRXNPe2shuOXm0iTtkeMtYiW30lQp
X-Proofpoint-GUID: sBlwRXNPe2shuOXm0iTtkeMtYiW30lQp
X-Proofpoint-Spam-Info: AW1haW4tMjYwODMxMDE0MyBTYWx0ZWRfX12nIoQEm900h
 vK6Q1VhFb7F32o36aT9SLtSoBddF4AHRcO9V+DZu8vJnJgT/WQit/YDBWyOuMRyzJOy1DJiuAOX
 EYHvTTaTyeb6Hx7rByspCVWn1o0zBEM=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwODMxMDE0MyBTYWx0ZWRfX/WcqVgZ9n4qK
 h6fLYQbAWMCUC82/yoCNceC7Fgt0tXagLkM5hSZlkQHmPSyKpRHicZRcooLUNg5BQ0lac3cSwIA
 xiq+/OUwVrNsi5gqhAaIM+JkikG2H7PTpfVVO9WnGmNFjijRoZoJqFtQbJ5c/TzzR3Hdhoy0+Iu
 v6uIeN6rUqqgnbyrxkL2eTQnTmJP3/6fSf+DYz/EF9DXL86oDTLn5Wn8mE2pLgIb+85ZMESTs/Z
 XSl0Z4O1oeHbMvjXs4cjUswt0K32X6cpGV0sKeHi816G1oPZQgFUqa0BF9SKeCZWO1U4UpGK2Br
 chnlWhxy7s2JlckUNfShH//iJOZNsK3O+hy9pW3sRk/Z1zbmozOHbzp3ZLNdDX+dwAY8W3XqXT5
 sE+EGinE+GkwYCDay0Bi6AZzcqg3WFcFv9jRx3IrbP5T/1mJn86cHf4HNHo7bkH8rfKEH715XsU
 C11rHcOU+XBvYnRsqXw==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-08-31_05,2026-08-31_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 spamscore=0 malwarescore=0 suspectscore=0 bulkscore=0
 clxscore=1015 phishscore=0 lowpriorityscore=0 priorityscore=1501 adultscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2606150000 definitions=main-2608310143
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260831_094104_597265_DCE824CF 
X-CRM114-Status: GOOD (  10.66  )
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

On 8/28/26 4:05 PM, Krzysztof Kozlowski wrote:
> Future Eliza SoC HDMI PHY and HDMI block require certain clock
> operations, like reparenting pixclok to HDMI PHY PLL, once PHY is
> initialized.  Similarly to what is happening on Qualcomm MSM DSI blocks
> since SM8750.

[...]

>  static void msm_hdmi_power_on(struct drm_bridge *bridge)
> +{
> +	struct hdmi_bridge *hdmi_bridge = to_hdmi_bridge(bridge);
> +	struct hdmi *hdmi = hdmi_bridge->hdmi;
> +
> +	pm_runtime_resume_and_get(&hdmi->pdev->dev);
> +}

I know the caller is void and it's existing behavior, but we
should definitely not continue if this fails

Konrad

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
