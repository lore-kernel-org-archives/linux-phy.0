Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7DBA2CF3181
	for <linux-phy@archiver.kernel.org>; Wed, 19 Nov 2025 09:04:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lM4Cu2BQoGZOLZ8wu7lJgEjFTMpGLHCcHCWczWAA6Fg=; b=xPL0GAfkQN3h65
	AoJkTfpd+TXbtehAWw7ILdXi0OTAdDeir1aKEjlzmj5jmtEBYS1flQFtQxzKZKGQXUGk+TNz5bR3i
	9V4z1DoF/Ccbk4/+z4dSueC9ocJmdDyE0YapiHv+mYZydSsdbbEulFwF5lcXQx3NA6ycAF8EjyBox
	Fa7gAp+t2PbqDvwZCqf0UP/kUDU6pmqiUAgRGxkkXKM8v6qbcVscmrjR6mSvANVZu1JAaAQ6dkvX2
	lWyEi3Ynhz52bjt02VIoZOzGoah61Jo+RpezYJF2M80DXP5jvr1U4pFh3CAFHCYNkuj+KjxQl6MS+
	yoX6uzpTAZkNitN0tNyA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vLe6c-00000002prd-19Pl;
	Wed, 19 Nov 2025 09:04:02 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vLe6Z-00000002prB-1Yt2
	for linux-phy@lists.infradead.org;
	Wed, 19 Nov 2025 09:04:00 +0000
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5AJ7OrJ4972425
	for <linux-phy@lists.infradead.org>; Wed, 19 Nov 2025 09:03:59 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=/DVKl889ORLjBsf1CmtN97Ol
	7Es2W4sbC50Q/Zqk7ew=; b=F133vRw/ZJ4fThE/cs7tswbRjcTnZTuiyAs967t1
	NxQHcSXheN2PJro5DSDzxHxsHezA9zxtMzf0jMlIleexCKkH18KfJ3waNPYNOezy
	ISGNC6ijgr9lWqeCpvuvS9BaOXMbTzHtaeycy5f2b05aAOfxOiYkaYauwx7lqUw7
	r8SK0bKAasUHFzybeZjoH1vd6UYCs/UvmXqdml8cuDduOa0bjIZ919Mk+W8lBbH0
	ChUwpaFfwePjxBG9hU/9S3zEmqNC7KbJlo2rlQyV8lHCf7KgY7gaX8mf5IZYjIFz
	VqBWB8QSKJguAogkBGypg9Nx19QZ/eicOUTPLSurRncNYQ==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ah9fu8a0p-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Wed, 19 Nov 2025 09:03:58 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-4ee3296e984so36569661cf.0
        for <linux-phy@lists.infradead.org>; Wed, 19 Nov 2025 01:03:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1763543038; x=1764147838; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=/DVKl889ORLjBsf1CmtN97Ol7Es2W4sbC50Q/Zqk7ew=;
        b=XMk7TpVd+nSGwkL9szPKpUuxKZ0XN0AEKr5WHQycgvcFg8WGgImb5BuW48FeTtgqGf
         hz+JClK5t44ubcXIZWlcEOG0VHWZnWx2f/UbQFvCuG4X7pqUIrnlQQBWmtjLARjHB96a
         xEAWYkL0EFrCslcFJ0G/Xg7ZMBg8l5TL8POAGQ/RmFCQyfW2p/T7f9PnUJv8KvMbHFjs
         p1x4b9s1zt4AhsG9aZhUvVLa4MtV8Pv8C20WsyZHGnGl9yUvCrq/1809hn8DKQJ0DThI
         7awhFFpL2TN2fUejlU+R1PeZY82yxEID+vtJC0rPE+a4GqyMHhbI6o9P4iRfIIVrvwLa
         cyiQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763543038; x=1764147838;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=/DVKl889ORLjBsf1CmtN97Ol7Es2W4sbC50Q/Zqk7ew=;
        b=kGOC2MIXn3F8qsLQtfnN2aYWZe3zEmoDLt6t6Nun4bxo/8GNya/HAApgBNYVwrR6ET
         gzFLXy7mY0lLepp+mVRpe753IQaIh74kAtRbm/5DQm1+7Mjp/otfUSJIWOC8Hg2AxY/e
         fMJecI37J1iDTbfKvCKlzDYfp/Q/CXSFR09exp9IXoGHwDvQtkAoCkaMO460P1rVJJaY
         SizE54bNbXMqt7Lela3GbE05i4o7FiBtYU0utbmA0EDoa1qSv6iDZJpqfqgHIKwAzhZn
         f0glPOUhSJ7n3kcFuislAi4Haahmjsj6PBEvPhpOtvXpn/OEzFWA68iaGsGuCFxw2pFH
         WPbg==
X-Forwarded-Encrypted: i=1; AJvYcCUa3BU+cNDVeAQb5rDj/aqmVgmrLHLAzE1x7SGud66o99K/dDybdGQStKGzmVGJ7FjLTq0InQEfk0I=@lists.infradead.org
X-Gm-Message-State: AOJu0Yy1L8q83jYRrfRRAp3sesQzUq4Wk+DZdintuNjTUB4xJuHwJd4Q
	siBwLpg3Pd7OJeVU/xXT/tbgxVN6+Nj4iS+YzVHqhDjDAs6ba3krL+sqHBgRksmqii956QNVh2l
	VUsEtB0qC5dggMc+khAekwDTHRz0J+mvOJxyBDRyhzFo0WIJrzlScIPK1Hr0/yIKgVOfw
X-Gm-Gg: ASbGncu4nYVW8FllecrBpjxfpzTHS5X5XaBOY7d3mRt3zknswstPuzwK8hJsGRjNa13
	pdWhk+pROldEzcFIv15xYyUi2EzJg7og3j3qIXXqtj8ubCoeYfYeE4AhkZxo2bcUfIlglx2SMdJ
	x+gsG/SGRz1VGMe8AdrxsVWNLkNfxPBwxeNhnrRZlDKDduy7MF7NWxWab41SPwDZjWba/n6gNw4
	AaNNoHPBEhWimMSl18FRtlWqXyOdeOge1baNBS8sEq/nRP95bf2fHzAd8L6a0k6CowdRQjqhngP
	8ZuzzTa7qU/OvEG3cUSHoRejqUxllNgT2Ad2UkWxWnjxMXHZ4hscanAWlA8/8Hno+RbSEdMoj/C
	NLMasV1Cdh3dM/QinyUD6dEH3+Ksuwr3st2QQdZJfC8bKvPNOZ8q1yT0JAacJUi3FlDDFnPZqLr
	CTgMoJ6ArV6PTe6MXLIoLj7Sg=
X-Received: by 2002:a05:622a:87:b0:4ee:1c10:729f with SMTP id d75a77b69052e-4ee1c1076admr155151881cf.35.1763543037812;
        Wed, 19 Nov 2025 01:03:57 -0800 (PST)
X-Google-Smtp-Source: AGHT+IEgCgf7dxZdMMwZXKao/8OhfR5srPEi9FV8w0+XM6CwVTnm8sYFYyJRINt88wai2SJeu1RY5w==
X-Received: by 2002:a05:622a:87:b0:4ee:1c10:729f with SMTP id d75a77b69052e-4ee1c1076admr155151571cf.35.1763543037376;
        Wed, 19 Nov 2025 01:03:57 -0800 (PST)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-595803b8bc7sm4478697e87.46.2025.11.19.01.03.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 19 Nov 2025 01:03:56 -0800 (PST)
Date: Wed, 19 Nov 2025 11:03:54 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Abel Vesa <abel.vesa@linaro.org>
Cc: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Dmitry Baryshkov <lumag@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Sibi Sankar <quic_sibis@quicinc.com>,
        Rajendra Nayak <quic_rjendra@quicinc.com>,
        Johan Hovold <johan@kernel.org>, Taniya Das <quic_tdas@quicinc.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        stable@vger.kernel.org
Subject: Re: [PATCH v3 2/3] phy: qcom: edp: Make the number of clocks flexible
Message-ID: <basmm6j76upxmb5h6tmqvuuehg3qvj3tfkbq4q6e7tugfkv4is@ttu4dam5h2gx>
References: <20250909-phy-qcom-edp-add-missing-refclk-v3-0-4ec55a0512ab@linaro.org>
 <20250909-phy-qcom-edp-add-missing-refclk-v3-2-4ec55a0512ab@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250909-phy-qcom-edp-add-missing-refclk-v3-2-4ec55a0512ab@linaro.org>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTE5MDA3MCBTYWx0ZWRfX2RziE/eW/vrY
 iI8DgZAwE4UtmqQgMsoxbStn7TKpdrpXCYUE0j2qqxmGWvUXfWiMTZ+2n9i3RLvELG5dRxWFgNW
 kpBmxN0ll5vwiBlhRrMYUtzr5RvLfZ8ejry99Zr4sLeaDW/p20l4SFTiuy0yEQNrOVs6PK1MWwJ
 z/YoI6C4OyJUdlKCQlvktcXMTE+L83VnLCbQ0CXcTUhqxcv1E07h7BxpDLLXy1Xf+FEXXX9e78X
 w4+6WEEcnEi8pqHl6szJfkbTCrsSYJNKZxwr8zcToq/QJVDumQZFf6fqtMQ+2yEJ5VHnUwvtFgB
 eFtEV9GHrFK7FZJ+yKSgOpHvFn9pelfGBMIvZ6DC+/nS0oS4ZA555Q4+Od675TiiaAR6M5u4m+a
 4t1EFnRsq1w5BFVoaaE+VrUtMjowAw==
X-Authority-Analysis: v=2.4 cv=KZTfcAYD c=1 sm=1 tr=0 ts=691d87fe cx=c_pps
 a=JbAStetqSzwMeJznSMzCyw==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=VwQbUJbxAAAA:8 a=KKAkSRfTAAAA:8 a=EUspDBNiAAAA:8 a=77Gn-jvO4NWksBu-1S8A:9
 a=CjuIK1q_8ugA:10 a=uxP6HrT_eTzRwkO_Te1X:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-ORIG-GUID: Gj3UIOJ5E51OLluzhBRpORV4q_YcS1F8
X-Proofpoint-GUID: Gj3UIOJ5E51OLluzhBRpORV4q_YcS1F8
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-19_02,2025-11-18_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 clxscore=1015 suspectscore=0 adultscore=0 lowpriorityscore=0
 spamscore=0 phishscore=0 priorityscore=1501 malwarescore=0 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2511190070
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251119_010359_413801_62B0DB57 
X-CRM114-Status: GOOD (  19.47  )
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

On Tue, Sep 09, 2025 at 10:33:34AM +0300, Abel Vesa wrote:
> On X Elite, the DP PHY needs another clock called ref, while all other
> platforms do not.
> 
> The current X Elite devices supported upstream work fine without this
> clock, because the boot firmware leaves this clock enabled. But we should
> not rely on that. Also, even though this change breaks the ABI, it is
> needed in order to make the driver disables this clock along with the
> other ones, for a proper bring-down of the entire PHY.
> 
> So in order to handle these clocks on different platforms, make the driver
> get all the clocks regardless of how many there are provided.
> 
> Cc: stable@vger.kernel.org # v6.10
> Fixes: db83c107dc29 ("phy: qcom: edp: Add v6 specific ops and X1E80100 platform support")
> Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
> ---
>  drivers/phy/qualcomm/phy-qcom-edp.c | 16 ++++++++--------
>  1 file changed, 8 insertions(+), 8 deletions(-)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
