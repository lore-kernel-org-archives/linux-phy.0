Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A04FACCA471
	for <linux-phy@archiver.kernel.org>; Mon,  6 Oct 2025 09:43:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fujp0JBG1do9w4cdqP+SGkfhOI0bbUxkZiBoHy/43y8=; b=JL+3Hl/Zsx1wmU
	GsGSFuWWh5OFcGWMK6QAirw3FTd0aa1zzIRlB9Qmcv+Zds35lgJOxwRY4V4BK79YottyBArgSPUXw
	laJ5xWsOKyuuxqo74eJp5T9FoXp8ODklO4L2Mq3t2wVKDMC+l8QHEaQS8EQOPugboPMYp3BvPtxZq
	A745QF96wCp1yZQ/2he+hLzjoo0It5QULmXNNFWBDk56BwKQG42Xc2lbMNU05EjGMFUiuchx3yWaV
	7mqqSKw+lrhq1r8uf156fG3/nNEjZJNMoWDF5pDVDNNrfMMF0uZMxdPcscc7TK2Tk4MWJqCxZJHGw
	M8twrQUxsUUKo0pLNPiA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v5hkm-0000000HGT6-1Mrq;
	Mon, 06 Oct 2025 09:43:36 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v5hkj-0000000HGSj-2NAU
	for linux-phy@lists.infradead.org;
	Mon, 06 Oct 2025 09:43:34 +0000
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 595NpdFJ026804
	for <linux-phy@lists.infradead.org>; Mon, 6 Oct 2025 09:43:32 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	tQIe8mny8lpWTJQXbYK8gsz6F004+u+gJgZcpGlIaik=; b=ZLeQpAO5b+eJvPfu
	nRZcQ7gtc8UaS62u93vdXEq/zYhKi5uqAlek/nu9ZviSzqjhXjRlZsXzeBS4Xy7y
	vdJesuzGXEpPekQg4PcStE/kVbOtOAwYQO9DdnC90Pz2IJltQ3t7o4qWQc/kg97c
	DZsQn6f0IYXoU5Pdg1tZv+x4xbAlICP18cbGN0TVhqqTjuO533qo1A5yZa44Rt+N
	8PWZIfEddATyRP6oX+oN46G1lpoaBgfGJqC5g+07T8sZPojR/QVfwQnqjBT6/lQJ
	Zupuvu0KaS8hBx121Al0AOgerijBOZ0SsJ3oGP5rJ/Hru6R4Bh01M3G/EPTkrbHF
	1rM9CQ==
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49junu3h02-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 06 Oct 2025 09:43:32 +0000 (GMT)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-4dc37a99897so12472321cf.3
        for <linux-phy@lists.infradead.org>; Mon, 06 Oct 2025 02:43:32 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759743811; x=1760348611;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=tQIe8mny8lpWTJQXbYK8gsz6F004+u+gJgZcpGlIaik=;
        b=Z9JMrDTCr4c6FRO8f13CtJuQnHWJ2420Iy2u9KENz1FYVvwe+ri+aPuWFBDJi+miFH
         uNAz6a2FH9i++/l86XZ9VwLz0/vUKpBFiCx2vCiOvN0XY2kbKRhFkdP8ZT3ZhOVNZQAP
         /tqZgW7AlXFC2V/MpAK5pAziYXYcauzw2MLnnoS19ufn1UYfIU3BiXSe62/FalsYKwvW
         kHtQWsYZHAvpakHpZCerTaaF+jQPsecN8K3f8POYqkl2CaepvQrtOuIqPQv56dZz3O3/
         iHkNbdCmrne/xze6Hcm2SScrsC1m/i8jlpp/LRsY294I9SLJZqtwYWX/PDVrGU2mqHob
         6ufw==
X-Forwarded-Encrypted: i=1; AJvYcCXwDtAfe/i6r0k9V2CNpgmLcGlkXeRY2pdg0LsF31MUcFS9Hc8OHXcnn1eYqZk2+eOum4tYks3YBTY=@lists.infradead.org
X-Gm-Message-State: AOJu0YzNpcn+Kax16MeXd5fyrHdPWtmQYpdq93FhnHV3NSdBmwVXLIp2
	5HF7LrMgBlw8nIUfGMVZgqGV6XDQVotmFS4fJRWLG1p9MgKDEjlx/u7OAPInfe2Pmbhw8aSPyAd
	E9NPf855tepzBaqC7rVcc/ipbF+DzaD/wNYFe6455ol8B6C9qo7sjKCLePiUAVRC/NUD4
X-Gm-Gg: ASbGncv8/Nc2VCVf0GUaxW4onvhAdkfBMNwxZmjmrhJPnmbwnpOAhHq+ybc5Vd0aIyY
	Qb505UIMhHdFtdWTuGLlJ+X3EHUxZUYzqWjBYkZRDGTUyjhGjrhszLGdnn4BoFsK1WIzlUHpGXy
	zLQCaz98XRix8DeCOxbO/tA7n9bmwrX+dbXR+PXiTx/wH8djpUOeOIptp7vO5rNVtXDBiIV3Rx8
	Ooub1LRH2DLDjK3qVQUU0/HM2kyzhlwN1gPS9YvCvNkCldfwWBeDo7W6R1XAlfIUpmtx6tV4hTh
	TsjMzEzvpq/aJ08gUm3JK2nH1NmWYdOQowvZhfsT4kU/hZ2IX17eNh25c5zXypZ4+PgiaW5sFrJ
	/zMhaeY+DmXrRhrixo6kFHf3KHh8=
X-Received: by 2002:a05:622a:258a:b0:4e5:7716:53f2 with SMTP id d75a77b69052e-4e5771655famr95826091cf.8.1759743811130;
        Mon, 06 Oct 2025 02:43:31 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHUXXbxMxFQqe0X0SjTWriB86v6b78P31OuJJMWbMygO3fbIGEmAAsmk5wn/CxtoooibO/WIA==
X-Received: by 2002:a05:622a:258a:b0:4e5:7716:53f2 with SMTP id d75a77b69052e-4e5771655famr95825931cf.8.1759743810661;
        Mon, 06 Oct 2025 02:43:30 -0700 (PDT)
Received: from [192.168.149.223] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-639773d4d8esm4041553a12.30.2025.10.06.02.43.28
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 06 Oct 2025 02:43:30 -0700 (PDT)
Message-ID: <c8dca827-b089-48e0-9dc2-a5b6e3c5b88d@oss.qualcomm.com>
Date: Mon, 6 Oct 2025 11:43:27 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 1/3] dt-bindings: phy: qcom,sc8280xp-qmp-usb43dp-phy:
 Document lanes mapping when not using in USB-C complex
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
        linux-kernel@vger.kernel.org
References: <20250930-topic-x1e80100-hdmi-v4-0-86a14e8a34ac@linaro.org>
 <20250930-topic-x1e80100-hdmi-v4-1-86a14e8a34ac@linaro.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250930-topic-x1e80100-hdmi-v4-1-86a14e8a34ac@linaro.org>
X-Proofpoint-ORIG-GUID: IHGotOnhTWOQZfWZMB8OHlbWBxZeJss0
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDA0MDAyMyBTYWx0ZWRfX6PHAVAdnOH60
 kXZpW4sjoJd33vSC/Dpu+gtWwo6Z4UEr5rK3IeI8VjCAeeuE3ZC/LhKL2lTj1BJ42lElQ3lJMq6
 EY2psEH5tJh+VmOvdRCMDBo4/ihyJOmyBjtp0f0+0g6eeDacVSjiC5kVq+3H8MW/C5EZNoTRl+0
 kxjVKVjlPgS2+8roD3hNCP0CabjYmZn+Amu64RPfUhodURcuMOSNnMI4Bw7aNHXN6Z6WKc/br4j
 G9sb6oG64H42iTnoMAyPtOvPI0osT9v85kdm+z+U2yr0nfXW6wvPkfl9hqHkK/HlPbPyuYPSlM6
 4+YL1KpL6NBlxvCwD8stnhFxiqSNXj/NeW0o9H7HOYAB7dQbAZ7DErKQ8EDbxntY3DMGJC8Vs7d
 hFkieXI0hAZE1/V9bfNzZQ0EmaAgzw==
X-Authority-Analysis: v=2.4 cv=CbIFJbrl c=1 sm=1 tr=0 ts=68e38f44 cx=c_pps
 a=WeENfcodrlLV9YRTxbY/uA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=x6icFKpwvdMA:10 a=KKAkSRfTAAAA:8 a=eg4Xx4S7Erm8exKiWv8A:9
 a=QEXdDO2ut3YA:10 a=kacYvNCVWA4VmyqE58fU:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-GUID: IHGotOnhTWOQZfWZMB8OHlbWBxZeJss0
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-06_03,2025-10-02_03,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 malwarescore=0 clxscore=1015 adultscore=0 suspectscore=0
 spamscore=0 priorityscore=1501 phishscore=0 impostorscore=0 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2509150000 definitions=main-2510040023
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251006_024333_724153_1A85EC0A 
X-CRM114-Status: GOOD (  17.53  )
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

On 9/30/25 9:39 AM, Neil Armstrong wrote:
> The QMP USB3/DP Combo PHY hosts an USB3 phy and a DP PHY on top
> of a combo glue to route either lanes to the 4 shared physical lanes.
> 
> The routing of the lanes can be:
> - 2 DP + 2 USB3
> - 4 DP
> - 2 USB3
> 
> The layout of the lanes was designed to be mapped and swapped
> related to the USB-C Power Delivery negociation, so it supports
> a finite set of mappings inherited by the USB-C Altmode layouts.
> 
> Nevertheless those QMP Comby PHY can be used to drive a DisplayPort
> connector, DP->HDMI bridge, USB3 A Connector, etc... without
> an USB-C connector and no PD events.
> 
> Document the data-lanes on numbered port@0 out endpoints,
> allowing us to document the lanes mapping to DisplayPort
> and/or USB3 connectors/peripherals.
> 
> Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
> ---

[...]

> +          endpoint@1:
> +            $ref: /schemas/graph.yaml#/$defs/endpoint-base
> +            description: USB Output lanes of the PHY when used with static mapping.
> +			 The entry index is the USB3 lane in the order TX then RX, and the
> +			 number is the PHY signal in the order RX0, TX0, TX1, RX1.> +            unevaluatedProperties: false
> +
> +            properties:
> +              data-lanes:

Can this be described in a somewhat reasonable way to be non-compatible
with Type-C properties for more validation?

If not, let's just maybe add a comment like

# Static lane mappings are mutually exclusive with typec-mux/orientation-mux

Konrad

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
