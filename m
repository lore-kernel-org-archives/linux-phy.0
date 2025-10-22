Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 86611CCD1AB
	for <linux-phy@archiver.kernel.org>; Wed, 22 Oct 2025 16:38:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VFl/gTUeY0diQcnvjKJhBHGmRxOrLnDqaNqcYbSNh1A=; b=BLLw6wawF0m9NU
	/Yc+C8U0ZLRjt//pw5eGeXpP37ANrBnKzSFU7iMPWXDJAeY4HAsN3l+w0MLiHqIj/ANoqm4eIowVN
	dXk2AIMLwmMdsOPHBrq3hDyO9JAUYRJY6J2oI3exoOoSmMoTokvUnN3xb3Q1fS41nXCShPrtAhjUy
	Mq9GG3hS8YGZmCeDAjBh5POs+3x3vZpMVt8RmHnSgsQH8TC6TJ0TpAvzWYLcVU0jnxb3fdGNMxKY0
	veC6UagNbU1pBpRpWwrMmuiRwdRtbdWJ+EvNIZ4HOJNCvkAKG7zEVWA7I3Gpy0kC3TrdmvuhBypvB
	eOLADo1+k4vooNjx3yPQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vBbr8-00000003cz1-0ZpW;
	Wed, 22 Oct 2025 16:38:34 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vBbr5-00000003cxY-3Op9
	for linux-phy@lists.infradead.org;
	Wed, 22 Oct 2025 16:38:33 +0000
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 59M9SGcA020413
	for <linux-phy@lists.infradead.org>; Wed, 22 Oct 2025 16:38:30 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	07OU1z1hNxrGxA+md7kscEsHiEoFwg7IhtIMFNGGHkY=; b=NOnaTDWDqHKfBvMg
	gkcJw2k12CGgYvyybuCsPTbcYgdeP/z4OmxpqVKNhDaTS7PvB2Q6ceZH90bmYUKq
	T/GY8YsXKZ1KbLNgeTKwoS+DRqepBTwNNY4AV/9qNGJUWJNN3WcrMJaSF3uVHxxw
	1GwkGlGKlEMXYGrE3IsUk8mSgR5htAFyQq0vZT0dIvb+lsxB+P4gXhyKkh2c8nr+
	Y0K8pD7jTKFOnLF/aC270TyCXQ8gEu+VpxRsVQgcggc23zBSDFkujHZiUsrm4Dj3
	IEgmhAjSLnd43uw9oyloPNgZhac7FgFbzIcFc5Nh228enP8swqNnWq8JjoTCzBUW
	mFCRrA==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49v3445dxm-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Wed, 22 Oct 2025 16:38:30 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-4e8b86d977fso4708601cf.1
        for <linux-phy@lists.infradead.org>; Wed, 22 Oct 2025 09:38:29 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761151109; x=1761755909;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=07OU1z1hNxrGxA+md7kscEsHiEoFwg7IhtIMFNGGHkY=;
        b=SW5a1qmh6DshkvtL5OwfB0TJ/9EAQsE/0wust6A1gOhjKi0qU/qKR21XY+usbxX3o0
         11GpRCbXNM3s6vBnqUrffjIBNMQ6HVzK2BGILiYVu96scPDpv/dR1iggvVAAQ3oVDTlC
         /Qqmnplvxe6LI/XDCGGcQ+LlkkJ3I9AIJXDGZleRGFbk7jSa1kC2e0gVJ5DwIbhC+fsn
         pNjqIsoV4/pVlU2YuUs53n59wfgUfqnrjL7PgR8V9k5Cb6mfmTd1sE4+Mz1n833tYdsg
         6TXO+9svx+0Yoa3oH4OwTIxF0kjbhMivkDnJDKPmg+gUkwKds8nhKEzkvuN/uFT3gIMa
         xCtA==
X-Forwarded-Encrypted: i=1; AJvYcCUY632+R8hzeYimOBkBNaJRLGGmrUXSD5ome2vJL+6qKUbUG2wSo/Q1F4wpk6ljvGod69WwJx0f3pc=@lists.infradead.org
X-Gm-Message-State: AOJu0Yy2/Na73tbY2aUBh79H2sgvnQWUKaz/87lEgplSCZDie+n4RJxj
	zHuysxGlPMS8/71siBAbnNkwRg7IgBkIoVf0eROdjaTLtkVmSwHmIEstuqlCpLi4NfH9xAHVJy4
	oYtP6g3qD9kFFffCczFjtulbJbQ3PsRORCEqUT6rsSC9Opc0FtB7E/trtKwBe8XJIQLEz
X-Gm-Gg: ASbGncsp75/S6Dac5kUOLkKXq5YoG3DE0pnXmPFO3ldUWXXNRqW+nOA3maa+pXComTC
	jCh50/u+/Q9JeKie7TkfOdIuTLRH6pwIay/uttLUlDBys7FSb+i3TJkyGbh837/G2XVYnCyR3Pv
	MLe7XV9G/3cbELh9xbQ0TzQ2ssii9Ww5LAbqjLUzSxBNhB9z1EINuRH2Z2zP1V6gp+3DuZL/EQb
	m0/PuzUB3qNE8c4oUgIVVuM4/06JrPOjS/57AsNdV4z/VYIXp2sPcBTtKjtAadUvL07cR0goEL1
	q1XgeJdzBmNLRl5FJlcbuLlngPWT7l1TZhDSwJASaqWn67js4pgCR+806SqzxIzCe47OUbUVexl
	bj1MxxuBxTtfdeTsAnC8xVyzr609WiGbKdph4ok8fFHkOLm5rdLMFO8aB
X-Received: by 2002:a05:622a:548:b0:4e8:b910:3a7f with SMTP id d75a77b69052e-4e8b9103edemr124725321cf.13.1761151108802;
        Wed, 22 Oct 2025 09:38:28 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFRYPknr9Uj0amxUOYfxOvPxxQnoEoW4H0vD0Htc0V340Pcq+BvtCrnq9gFpLvh3TOojHocGg==
X-Received: by 2002:a05:622a:548:b0:4e8:b910:3a7f with SMTP id d75a77b69052e-4e8b9103edemr124724941cf.13.1761151108268;
        Wed, 22 Oct 2025 09:38:28 -0700 (PDT)
Received: from [192.168.119.202] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b65eb03649dsm1375160666b.50.2025.10.22.09.38.26
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 22 Oct 2025 09:38:27 -0700 (PDT)
Message-ID: <06f74fee-9ab5-4b26-9497-9f617edd97f0@oss.qualcomm.com>
Date: Wed, 22 Oct 2025 18:38:25 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v6 2/3] phy: qcom: qmp-combo: get the USB3 & DisplayPort
 lanes mapping from DT
To: Neil Armstrong <neil.armstrong@linaro.org>, Vinod Koul
 <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: Xilin Wu <sophon@radxa.com>, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
References: <20251013-topic-x1e80100-hdmi-v6-0-3a9c8f7506d6@linaro.org>
 <20251013-topic-x1e80100-hdmi-v6-2-3a9c8f7506d6@linaro.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20251013-topic-x1e80100-hdmi-v6-2-3a9c8f7506d6@linaro.org>
X-Proofpoint-GUID: 1-fzlE-NHD33kvqvfJmmA03zy1YaB3M2
X-Proofpoint-ORIG-GUID: 1-fzlE-NHD33kvqvfJmmA03zy1YaB3M2
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDE4MDAyMyBTYWx0ZWRfXybiW1IhT1uSs
 qnX//EE3BlfBMZrpx96KZrPtmVmlP3nts12J8DVZklOPBXlw7sXaEh9sS+kmTGAAZBfSlraOPeM
 ggL6WOS0lVISp/f0GddMXWAeicUXQsW6mwVNhtHFB6s3HXFXFztOFCmQMKmwJR1kNYd6CmTA+k4
 IVh3N4voy381qqPsIJrN1Pohpv2PHVWh5wL6dDtgvbXEX4NjZb7iesN57403CPNTu75/+vRN7St
 ra7Iyj+qREKoAyT1AcT3WfQ35U3aZXerOJEmf2KPPY2nsmekFCZ4uKvL/akvOrTdAvLMn+y8ZFy
 qV8dEC4r4dNF79XTf+LY3lCuTInP/Si0M8fb90VSu5iJjz24VnRL20zKDYgfVtItn/MQ0R5ArTP
 ip7LqUySuCI8YPo8z4sWBvLrpEI6FQ==
X-Authority-Analysis: v=2.4 cv=E/vAZKdl c=1 sm=1 tr=0 ts=68f90886 cx=c_pps
 a=JbAStetqSzwMeJznSMzCyw==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=x6icFKpwvdMA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=ksxQWNrZAAAA:8 a=KKAkSRfTAAAA:8 a=HJemwo2QgkXW1dxJUx8A:9
 a=QEXdDO2ut3YA:10 a=uxP6HrT_eTzRwkO_Te1X:22 a=l7WU34MJF0Z5EO9KEJC3:22
 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-22_07,2025-10-22_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 spamscore=0 priorityscore=1501 bulkscore=0 suspectscore=0
 lowpriorityscore=0 clxscore=1015 adultscore=0 phishscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2510020000 definitions=main-2510180023
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251022_093831_858122_C9C761A0 
X-CRM114-Status: GOOD (  11.83  )
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

On 10/13/25 10:55 AM, Neil Armstrong wrote:
> The QMP USB3/DP Combo PHY hosts an USB3 phy and a DP PHY on top
> of a combo glue to route either lanes to the 4 shared physical lanes.
> 
> The routing of the lanes can be:
> - 2 DP + 2 USB3
> - 4 DP
> - 2 USB3
> 
> Get the lanes mapping from DT and stop registering the USB-C
> muxes in favor of a static mode and orientation detemined
> by the lanes mapping.
> 
> This allows supporting boards with direct connection of USB3 and
> DisplayPort lanes to the QMP Combo PHY lanes, not using the
> USB-C Altmode feature.
> 
> Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
> Tested-by: Xilin Wu <sophon@radxa.com> # qcs6490-radxa-dragon-q6a
> Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
