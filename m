Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E9C79CCA470
	for <linux-phy@archiver.kernel.org>; Wed,  8 Oct 2025 09:31:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fndQ5Av0c8RKZrjtaohM/ORtcHsuynitQys69+2/Xh8=; b=h31cIMT+bpyDnN
	iefLyEeuxBINtMT5xGIh5mEnDJe8rD212N5VPI73PX1UkHVFsbVi0GYfD7KR3AIreGu80APt5zDuw
	3APgO8yyOymEK5tQ5TAdsEuRwZ8sBQbFsA9o5OpvGdi5zyx7zaCEGLyjWcIn8Fk+S7AXPF5W1sqY+
	eVAEkcRjXoH6+sfsAEWjA6YF1u7C1H8S6GdRVr1i06ldNNMQcuafyrHdPLAArZIXaVLWW+APjTkEN
	gYHgFsQoME85Y3OMMNb0cZn4d9KfZVBM+4WmuNWCVxy6vo+WcNuZ293RDXg5cC9RenXyyO1rbpD1p
	jT+VhYuCtOV+zDinIC3Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v6QWO-00000003ZP5-2zBD;
	Wed, 08 Oct 2025 09:31:44 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v6QWM-00000003ZOR-0Sbh
	for linux-phy@lists.infradead.org;
	Wed, 08 Oct 2025 09:31:43 +0000
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 59890Mfq009299
	for <linux-phy@lists.infradead.org>; Wed, 8 Oct 2025 09:31:41 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	ShStu+tivNWxJNb9OpE76BCF0d8VuC1LAfixqiQb3OY=; b=o03U3zoWFsowrXnn
	2UNigC+icoONELY/Je7uWbX7abtPdVQPs2yUfZH45SO34KnUy0fOZ0eZAw9W3jb3
	fKIja23PN1qijci21AWhrvIssw4XnhLrruuJkHCXoApQJq57Qrv65rN4sXRIB/UO
	eaB+tBzRx9Mc8L3QxzcsuVJp440uCxZvhP7/jrJLtxiIaPy0TK58pVVK40gmQ3r+
	uKRglkUqDn3Lrymqb3KNUtDiQvdNVklWP5PuUKcVNNWBHgZTu2gkYiLpBUlWoZLu
	Po9aK7wFuLL8aYcTCUVfQOOeCHqmCr15Iz9c3HoCnVSpA2ME1JanAvtJLrErABBs
	IG/dgA==
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49junu9yba-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Wed, 08 Oct 2025 09:31:40 +0000 (GMT)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-4e231785cc3so29841741cf.1
        for <linux-phy@lists.infradead.org>; Wed, 08 Oct 2025 02:31:40 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759915900; x=1760520700;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=ShStu+tivNWxJNb9OpE76BCF0d8VuC1LAfixqiQb3OY=;
        b=kRH6eI7cxqHPK+5v8hKmHquUb/+RAWtTPKsfFV+PMnB2Q2NC184eO/R5lcdfTaQKDz
         MutuKce8zerl2x72X8hqIYLhxyUkAV37NvqoSMyCr5IkpUCP2XAsAfsKm5z5jXpgH0IO
         bnn9GeAvwrveJ1JrpIXGo/qeh94TQk+hfUQ9gttupFBjqETTZo9dYg8HZiZljRo2evUQ
         5iD2I3mqXryOOXLUSPXBTMwOZB8OCXfw7SI6n/F+tbiBNbcX/Y1Amcr/kpZsOlSj+OPl
         MG5yr/wG4t/TRxHI7oE2mi4Uw4Z0h2fTCMNyELCRtBy8W0tbPWdR53AfVE11/sRHXPmb
         jjtA==
X-Forwarded-Encrypted: i=1; AJvYcCULnR3eRdaKcyEV1faRf2fIpopxXD9nzPDRiso1vxhbtczhq+HJi0vdLcvCmsQ5X56sIczM8ej5FaU=@lists.infradead.org
X-Gm-Message-State: AOJu0YzcS1mBTBuvP3HqOC+z2b7BzKU47RZziSi2EUn/D5wUZT76oDxq
	bguob/FGVREPcFYMypuqeqNuUxAsIGfe03vtMaIQRwTb80PYzGTuyIWuSjzDk16u7lEbyP3LqvM
	74bDK3M/7af+7Jk5NszEFGGlHJQ4SScowamdfmgY71qrYpBt+1kDi7RSsGduFWyGlIz9e
X-Gm-Gg: ASbGncsTE99O6TOFsj8q//CM1BgGjFgSvB7gSmPOk6g2JIsEpHwFhNBPQiNRhn7Ga3c
	D14HmRm67TH2SzCRZVA9EjQWBQia5I88Su6nFsQG5UMx6gJVo6J3GkCbK2nn2er43YLo/6B5L8H
	BJMIA9ZAiyCU4tkzR0pgkC0ZHO/99hiPK5jGi7eHwQo1Bv0WJBw09jhdgGx4ZoiTw2rjYecI6TD
	mf1/UAgFyhbEjqSTnduUFXRyMsh//eM3TjdMFFnJipuRyli2mHW64+FP1BFwdiGllyDA3Kyatmm
	BwGrb+NC801C/tL18bNWKLOzJJWGv0wD12O6Lb9kxHDX3tOj92vviIfpx+Wu9MxA+0JGvqgABsa
	ILEzqSIXYE436dN9Wlh0+/L9oiSM=
X-Received: by 2002:a05:620a:4802:b0:810:a76e:ffa0 with SMTP id af79cd13be357-8834fb91810mr254822785a.0.1759915900128;
        Wed, 08 Oct 2025 02:31:40 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFgI4JjYPgSltjbrXNMG5XKEPcSfJAFH2WNqprb2InV6i1eGoR4lz/eu3nqT6ttxe1KsGCpqg==
X-Received: by 2002:a05:620a:4802:b0:810:a76e:ffa0 with SMTP id af79cd13be357-8834fb91810mr254820585a.0.1759915899691;
        Wed, 08 Oct 2025 02:31:39 -0700 (PDT)
Received: from [192.168.149.223] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b4869c4c1f6sm1656500366b.78.2025.10.08.02.31.37
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 08 Oct 2025 02:31:39 -0700 (PDT)
Message-ID: <141e33fc-c963-4f58-a69c-e7068c9ec6e8@oss.qualcomm.com>
Date: Wed, 8 Oct 2025 11:31:36 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5 2/3] phy: qcom: qmp-combo: get the USB3 & DisplayPort
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
References: <20251006-topic-x1e80100-hdmi-v5-0-c006311d59d7@linaro.org>
 <20251006-topic-x1e80100-hdmi-v5-2-c006311d59d7@linaro.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20251006-topic-x1e80100-hdmi-v5-2-c006311d59d7@linaro.org>
X-Proofpoint-ORIG-GUID: z5DbBRY735b6NugB8t94aNhF5MmnyYzw
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDA0MDAyMyBTYWx0ZWRfX5Dzz9iAn4DPt
 sS6f9ivV1Boz6vo8ErAEav66aqtpPGx2pYXg+C6IcQW5hUiJCIs9wkV6PU0Lq3lho3kEquJcnIj
 p9vx5AVFbJi3cbFWGTnGgnGTHRc5XjP6THg/ooYa3ICVPBRhl8QsODywD+bP103YHpJ1AWjuae4
 RTEjR/1ASgcVyJtyIShJj8wBUzl1nWuVqIGCC5mEY+nPBEsaXNeyeXaNztBJPYsREMDtnrlYcs7
 00ZwMTio1iZszDAn597IFQPWnMXn/6RLQHxBJpS90NRRuXNk6eZilIvZ/TpRuOExbKRMkEtACr9
 wSeBiP4J0SBUqXNqvZfSh5d2PrcEUhaFfkFnNEcG5i+1aNFwx1t6CCcQbnJKaT1c/ir3WRwgzDU
 SxkW1gbK1hsapw/VmwmGEVNDtGeoww==
X-Authority-Analysis: v=2.4 cv=CbIFJbrl c=1 sm=1 tr=0 ts=68e62f7d cx=c_pps
 a=EVbN6Ke/fEF3bsl7X48z0g==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=x6icFKpwvdMA:10 a=EUspDBNiAAAA:8 a=KKAkSRfTAAAA:8
 a=GTBF0nZXcthx15BNZngA:9 a=QEXdDO2ut3YA:10 a=a_PwQJl-kcHnX1M80qC6:22
 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-GUID: z5DbBRY735b6NugB8t94aNhF5MmnyYzw
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-08_03,2025-10-06_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 malwarescore=0 clxscore=1015 adultscore=0 suspectscore=0
 spamscore=0 priorityscore=1501 phishscore=0 impostorscore=0 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2509150000 definitions=main-2510040023
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251008_023142_289389_9C7BD850 
X-CRM114-Status: GOOD (  18.08  )
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

On 10/6/25 3:55 PM, Neil Armstrong wrote:
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
> Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
> ---

[...]

> +static int qmp_combo_get_dt_lanes_mapping(struct device *dev, unsigned int endpoint,
> +					  u32 *data_lanes, unsigned int max,
> +					  unsigned int *count)
> +{
> +	struct device_node *ep;
> +	int ret;
> +
> +	ep = of_graph_get_endpoint_by_regs(dev->of_node, 0, endpoint);
> +	if (!ep)
> +		return -EINVAL;
> +
> +	ret = of_property_count_u32_elems(ep, "data-lanes");
> +	if (ret < 0)
> +		goto err_node_put;
> +
> +	*count = ret;
> +
> +	ret = of_property_read_u32_array(ep, "data-lanes", data_lanes,
> +					 max_t(unsigned int, *count, max));

if (*count > max)
	return -EINVAL;

> +
> +err_node_put:
> +	of_node_put(ep);

__free(device_node)

> +
> +	return ret;
> +}
> +
> +static int qmp_combo_get_dt_dp_orientation(struct device *dev,
> +					     enum typec_orientation *orientation)
> +{
> +	unsigned int count;
> +	u32 data_lanes[4];
> +	int ret;
> +
> +	/* DP is described on the first endpoint of the first port */
> +	ret = qmp_combo_get_dt_lanes_mapping(dev, 0, data_lanes, 4, &count);
> +	if (ret < 0)
> +		return ret == -EINVAL ? 0 : ret;
> +
> +	/* Search for a match and only update orientation if found */
> +	qmp_combo_find_lanes_orientation(dp_data_lanes, ARRAY_SIZE(dp_data_lanes),
> +					 data_lanes, count, orientation);

You can zero-initialize `count` and drop the custom error parsing above

Konrad

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
