Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7AFAFCD98E1
	for <linux-phy@archiver.kernel.org>; Tue, 16 Jun 2026 14:07:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8CXmXgVF6DjcpIkVpuUuMc3+h4bF5TtXD8B02ntE/1U=; b=vqjI5cihfCfMgA
	Vkg/8IOu3GAcSiZKiQSKfkxAI1ttwJQ5XbRKr/UmqaN9P4cVYE7A8RajvsuAdR4q5+6oXrcuBq+fl
	yuYms0mT2DDu3MV2iqPNkpBrpWqNpy65ypJapQyRiudho+d5AjUl/l841ZxDsTuEv9tCjnTG1DM/P
	WzvuS7FsIyS0kkFXzzhvrHYVpTVqDRpwsDllxJQ7O5V1sfoS6YP0Et8KR4M4GlcLl6E5fTjJo6S7l
	jxFd8cjOvz1ItzkzZTkcFSb6H7zmG9OzrVdzs88faAges0qKFT8n+3mKTo2vd4l2HeBgll+cjNm4E
	UdvkIV2j7Zt8r5qmj1yQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wZURy-0000000Ft6e-43jq;
	Tue, 16 Jun 2026 14:07:34 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wZURw-0000000Ft65-1wRI
	for linux-phy@lists.infradead.org;
	Tue, 16 Jun 2026 14:07:33 +0000
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 65GDxWML1934623
	for <linux-phy@lists.infradead.org>; Tue, 16 Jun 2026 14:07:32 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	KNoWQH1x3DXp4pJU5DWF9FFhRF/80Xvj4WBq0B37bzI=; b=LxiH0pyDHECyrTt1
	Vf5/mls2Nuf5cmJaAZXsNYZo32J7/DP0FCRofiOsxh8qUQX9lauUnN33jQ5QBWBK
	ct6lUdqW5tjE8vt2hNRKNAOu7Ue1xErQtxxUl13dJG9aLolSwcGaG2vlSieVyjX1
	jg/Q2YoC4x1TF8Atsz54lNn7KJB0zl7//yliFTOwcL/kQEbJAfuoY2se9peRK2nQ
	p7M8iMbk55aYH5qBMqYfRbbnc/gDIcRyo37M8vVQqVbMn9oiOwTtbNQP3gRizEYA
	Chleu/AEjI/v8Z2gHKxhtN6+UiZyOkj49QTeEDbit//RAQzjvlQMr7xtfx88yq1f
	YPTaZg==
Received: from mail-ua1-f69.google.com (mail-ua1-f69.google.com [209.85.222.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4eu3ct1b8h-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 16 Jun 2026 14:07:31 +0000 (GMT)
Received: by mail-ua1-f69.google.com with SMTP id a1e0cc1a2514c-966d2f25b83so17886241.1
        for <linux-phy@lists.infradead.org>; Tue, 16 Jun 2026 07:07:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1781618851; x=1782223651; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=KNoWQH1x3DXp4pJU5DWF9FFhRF/80Xvj4WBq0B37bzI=;
        b=BQOFffkVnjLiv3G6xf5cx3eUmy/RVd75cy7z7Nsi91PalpHNNk/X/lLusBBCBnPt06
         CgPROr77rjczbGBK32r/vFayXttTK3h9oC0uYdkBpiU0vaTV6cyYBTRxHv88yQJ6cTCV
         TpOgwpSo9xe5K+jKc1NkMQhA10POiGqouFj1kjLkbeNpbArFlHLKq6yQYzmQ+6VXcOJ4
         cainBX+qra1NmXF1fLJybrQ52Khx/4rUr0FY6NARMfNlCc+0s2c5lrAdyVa7K4ldjyRW
         Eed2XL3u+6O1vhyF3ijmFLYu3doSihQfcrJhD1F9L2Gh6ye3eo9v+pY5+OWJHABnIz0/
         AjjQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1781618851; x=1782223651;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=KNoWQH1x3DXp4pJU5DWF9FFhRF/80Xvj4WBq0B37bzI=;
        b=qXfN6ujXqW9m96MfJMYnIba5TY8Qv/T78Kz6yUNfZ9aIMxxlVKS3HJvtmSnNRtwdIL
         5gy+mNOQ4TgV+Ex0ro+W4uImJ015UIAzl28ZK5Tz/ZRr7Hn5JqUrL5hwRtLX8KixyVTU
         mhezIet7B++E6hJxFiRawbHVZ78yy2lAkonlYMGZgR5Ao6dlJPv/fJPMOGGDLVRrneoD
         ad7/8zezHpaspRI7yPObxmmZcbSQSYHlrBS9ZFhCZTiF9kg7PmYmZbUnevZ+BRPZen/9
         xXZhUJOy3z0/l2Q46yvVISrT7cWyP5ZH/P8k2pEPopA1QZUNBZyOJSAGJSM27MzKe+mi
         vbDQ==
X-Forwarded-Encrypted: i=1; AFNElJ8rByhIRfselPU2q4lVw2kWkRZVJiDuQBBViqsCMlhuLGd21faZERusdtoT5eAFW7VVN6WRRyLoV7w=@lists.infradead.org
X-Gm-Message-State: AOJu0Yw2BkMr4I96F1oLrUMg5PfEDNaESzPTUZd/Tybc41zf/93L5bCa
	B2Pw5BcqIiBZAKff5uBBIrN6lP3suHtE3HdR+oRtIuW0btqkLS6MmTV5S7zzicfSEHhNwOn646m
	430WiMh+IkC9n0JtGzokc0ENhvSIDI1BUkB0G/kpLkhDG9E6GnQ58Xt8c3WIO4yMXZat6
X-Gm-Gg: Acq92OEi2/lQ0EaDEoRhuPMJusSSA40yr8XDG+GOhZTBGRuLvCegO8dCAGAiP4DMLae
	/0zphDMbL8biQ8Z5L5pwihzEbjKrgbyW37yCqBFFp189lBTwSIP/VLE2oH8JsDx/iZfuiQ7+6aK
	y9rzNnEN41VxwFyk+7+8K/gElLqxUM8d2ewSlxkn95/4/CXTPPumxqLeVwXL0OqEo0yA+/98xto
	pKjETvCYOJQqoJdZJYHi3OsawhSUSozdWPdnCqJmbS0528JvUfeE+lKz3+b14HN/gj8SyTDX3ta
	HBVoT76vzQYfDWqEd8jQL2Hze1jyKPZKV+o7qYY/9OT797Gr54hfjXRO8Aw0Vie3YTdHbbubywC
	Yw2arH2WM+68MIKk7sZ6hWltZ+6p6Vcx03plmgz80h7CbdA==
X-Received: by 2002:a05:6102:61d4:b0:71f:856f:536f with SMTP id ada2fe7eead31-71f856f5b53mr991012137.0.1781618850873;
        Tue, 16 Jun 2026 07:07:30 -0700 (PDT)
X-Received: by 2002:a05:6102:61d4:b0:71f:856f:536f with SMTP id ada2fe7eead31-71f856f5b53mr990988137.0.1781618850430;
        Tue, 16 Jun 2026 07:07:30 -0700 (PDT)
Received: from [192.168.120.170] ([178.235.128.140])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-6937948dff8sm5199455a12.22.2026.06.16.07.07.27
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 16 Jun 2026 07:07:29 -0700 (PDT)
Message-ID: <bb3dd1d0-af41-4ecf-b23a-3800aa5414ce@oss.qualcomm.com>
Date: Tue, 16 Jun 2026 16:07:27 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH RFC v4 2/9] dt-bindings: phy: qcom-qmp: Add PHY selector
 and Glymur link-mode macros
To: Qiang Yu <qiang.yu@oss.qualcomm.com>, Vinod Koul <vkoul@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Philipp Zabel <p.zabel@pengutronix.de>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20260518-link_mode_0519-v4-0-269cd73cc5d1@oss.qualcomm.com>
 <20260518-link_mode_0519-v4-2-269cd73cc5d1@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260518-link_mode_0519-v4-2-269cd73cc5d1@oss.qualcomm.com>
X-Authority-Analysis: v=2.4 cv=SoCgLvO0 c=1 sm=1 tr=0 ts=6a3158a3 cx=c_pps
 a=UbhLPJ621ZpgOD2l3yZY1w==:117 a=PRfkaYvzSr8QmIIGAkY2Sg==:17
 a=IkcTkHD0fZMA:10 a=FelO9ux0wxsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=Um2Pa8k9VHT-vaBCBUpS:22
 a=EUspDBNiAAAA:8 a=B5XY--lqvWkliBBd-v4A:9 a=QEXdDO2ut3YA:10
 a=TOPH6uDL9cOC6tEoww4z:22
X-Proofpoint-GUID: 5vIq0sBBwCu2yFIr8IW7pkLJkG_Tnt_c
X-Proofpoint-ORIG-GUID: 5vIq0sBBwCu2yFIr8IW7pkLJkG_Tnt_c
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNjE2MDE0MyBTYWx0ZWRfX7Q9+wRVvyQof
 y3Ruf0mmiXbzuaYvoR8gxktV5gR1bPaGJNIVcq71tXLCN1SkbhZF8/InHWkZ4pIFQrjq96eErVj
 de48HTEGfFTqIDoxXK1WTH1YO6i02826EhLeH8dAZxrHtMKdypt8TeqqQBvGi+gYU4H5aJnA09C
 E9T/xcXayPSsAMsmF3TuuJS7D07qPuIpQzFne4vCdkjjmmFo3/BR78JW6XhEUmuy0UEAde+eAis
 C5+HDF2FQE63gt8QfOjJv+opQhvmyszm2tWhPf0/Pb+uQScbHBwxZ/IlXjflGugQ60paeIgYz//
 7xEsAwpyo+zeYaaZ06zmwicP9nwSEIQ7w/HDW/95k6MFWff7c2dAENfUOMAHbDVWQA5QdSRp8fd
 pbEF6UwHh6njfN5WYQcrCttHu5M10vnALxyXRA/DIkfRkPCTKjZVs5qXFtHqWoF53sGWNXVCg/U
 VuFprU7MAwuBd0pwnvQ==
X-Proofpoint-Spam-Info: AW1haW4tMjYwNjE2MDE0MyBTYWx0ZWRfX/kZH2J3yxhE9
 ysp4ONdZtxcvIdCUluFa2cy5lsHaC37VCLUt7tQvqesvo06iVaQk5E+gMxSYrFE4qHLnw7gz5+Q
 T8BBQ+W5BP/qDxUGxsU8BqJBemUwGwQ=
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.125,FMLib:17.12.100.49
 definitions=2026-06-16_04,2026-06-15_04,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 adultscore=0 clxscore=1015 spamscore=0 phishscore=0
 suspectscore=0 lowpriorityscore=0 impostorscore=0 malwarescore=0
 priorityscore=1501 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2606040000
 definitions=main-2606160143
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260616_070732_508738_EB6B0816 
X-CRM114-Status: GOOD (  14.50  )
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

On 5/19/26 7:47 AM, Qiang Yu wrote:
> Add two sets of constants to phy-qcom-qmp.h to support upcoming multiple
> link mode QMP PHY:
> 
> - QMP_PHY_SELECTOR_0 / QMP_PHY_SELECTOR_1: generic logical PHY index
>   values for QMP providers that expose multiple PHY instances under a
>   single DT node (i.e. #phy-cells = <1>).
> 
> - QMP_PCIE_GLYMUR_MODE_X8 / QMP_PCIE_GLYMUR_MODE_X4X4: link-mode
>   values for the Glymur Gen5x8 PCIe PHY "qcom,link-mode" syscon property,
>   selecting between the x8 single-PHY and x4+x4 dual-PHY topologies.
> 
> Signed-off-by: Qiang Yu <qiang.yu@oss.qualcomm.com>
> ---
>  include/dt-bindings/phy/phy-qcom-qmp.h | 8 ++++++++
>  1 file changed, 8 insertions(+)
> 
> diff --git a/include/dt-bindings/phy/phy-qcom-qmp.h b/include/dt-bindings/phy/phy-qcom-qmp.h
> index 6b43ea9e0051..befa76f8392f 100644
> --- a/include/dt-bindings/phy/phy-qcom-qmp.h
> +++ b/include/dt-bindings/phy/phy-qcom-qmp.h
> @@ -21,4 +21,12 @@
>  #define QMP_PCIE_PIPE_CLK		0
>  #define QMP_PCIE_PHY_AUX_CLK		1
>  
> +/* Generic QMP logical PHY selectors */
> +#define QMP_PHY_SELECTOR_0		0
> +#define QMP_PHY_SELECTOR_1		1

Is this for the second phy cell? FWIW I think it's fine to use raw
numbers as they're just indices (i.e. "nth bifurcated phy") anyway

Konrad

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
