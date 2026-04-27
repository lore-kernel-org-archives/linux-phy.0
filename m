Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 07923FF885E
	for <linux-phy@archiver.kernel.org>; Mon, 27 Apr 2026 10:59:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=k7dk7YahIMzT3VU+qWBSZ/f8IhLrX4CV2pcu03B9z+s=; b=FABmpCKTEfERSh
	QbcCBKcIAYQhsaXVcA6U1oA986pfeL9g2CUllBdtZxm7T2g3PasijDq0JT/EX5jEEZrCuJu/gLMxc
	laJKjhj/xF9mhJ+kQ+EhTy1QcEbqWwh/IEdXadTv15PqFMNAYBGuQCHYtXRYHgQRT3s5mA/npyH+y
	zhD5LgVGaM8ecJbw2HDLJ8wUw8USh8LWygbvZ5h7WTGZKuHZ64vKFSL2RfaFnHgncsU8N8UdO9FL+
	tlGlPRWal1jr/CRAhGvxogEVyaz7dM3XHLS6sugsbd19i81Pt+TwM5a3dp+9K0Lm+qmFBJ5MAZlHj
	z0pKkSue1GpyqCZjutRA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wHJgb-0000000Gk3V-2XN1;
	Mon, 27 Apr 2026 10:59:33 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wHJgZ-0000000Gk2y-2MYM
	for linux-phy@lists.infradead.org;
	Mon, 27 Apr 2026 10:59:32 +0000
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 63R8T7VB3639521
	for <linux-phy@lists.infradead.org>; Mon, 27 Apr 2026 10:59:30 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	VkU+JJl/K8cKkgwkX7d5IDmAB4GLCezaNEtXZjr23fQ=; b=n6WcaYDwHAdycMlj
	sROINfH6SEgOcy1eR4owin/qzupXJxsjr2Le+YObTLfIvlflBSMn9nv+LSlM6Vq8
	8zaeEks3hMvrWqbf79nUAuqNb8BYJtcNqrZ5EvxM5ZNDX3JLZFvX4TQZkmL5klpr
	5ZL7bCWtMj8tpZS19VCaPUTqS1bMXU9gKzpogAVPlRT9sxmePd36abpWFDe2p1ws
	HHnDPq+reu2EPATvvgmJtPyxASDiiYPanBjGQVNLpPoTmewyHZVkma5M7mq7+X7e
	EXgnZUxpkUYnkC3PaId3HgT6wr4hMSEG7pVB+vQc0N0ZcXa0k98NrLRkO1Z1WkIB
	cjCjXA==
Received: from mail-qv1-f69.google.com (mail-qv1-f69.google.com [209.85.219.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4dsya01rff-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 27 Apr 2026 10:59:30 +0000 (GMT)
Received: by mail-qv1-f69.google.com with SMTP id 6a1803df08f44-89f59c9bd28so15531286d6.1
        for <linux-phy@lists.infradead.org>; Mon, 27 Apr 2026 03:59:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1777287570; x=1777892370; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=VkU+JJl/K8cKkgwkX7d5IDmAB4GLCezaNEtXZjr23fQ=;
        b=XJ8KiSwKcR/emuggLMUgHOPNXY8iwbvcdn8e7D5KaZkPG4fb1xp3OOFeVHUbQL9Ci6
         X8yY9VFwHZJuv1xtmwPGVTsiKSbiMn+kBsa+9k9bLAU2WjDNVkCuqKfpGNCQe8oD8Kmk
         ydUAqSmIHBS2ea3GvJ9z/JkPtYgyQrCIunuTnLShA6b3c7W2caikuKCSOveDRXnGT0rn
         PP4lUM8Q5z9fx3XCMeDkRAjDc1cXHkkws1qzDZRSq62ZFsF/DwwIQIBMeLLFYIN2qpl2
         cO0k+BLjutYDmfDz+jUbqFFbxNhS1GYHwI6P2eLEodXI8XGTCG82YHvZsNXHkcn2hIAP
         cRMQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1777287570; x=1777892370;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=VkU+JJl/K8cKkgwkX7d5IDmAB4GLCezaNEtXZjr23fQ=;
        b=rasOpL1h/su24w69TdRrv3EhQ7atCbSJQEbzqGwYrL1r7O6STcVHgj3E10hB9pILaQ
         /MR0tNVjLktQF7gQhllb4+WUWuEbIqJ3R1RItIL+4T4gh1pF7LJ4RYgouGzPuYn5tf8i
         OQNG//1FHlN1Q+v3qdBCafddRt0u+85iMRids7VX6pnRP9FdpMzjvChrL5Z6+YT/vMMc
         0LfN5HglyAEnGrWb7ZA+EXU4PsKULTUtQTKAHuXTqd3eiUgY+2QRn1GRO7WGmvozmKAE
         pwOa/EZMFUtBVK7iMGfFDAZAsoz1RQeexl/BZKXjyoF/h/FybCWROmu11ijf70c7aCCC
         NCeg==
X-Forwarded-Encrypted: i=1; AFNElJ/Rl73RWBoksvfpiGtbQn6XhPDrUULa7v6PQ6vUaglU2shqqIN/cJJDANFxB358zC20MPngos2DjF8=@lists.infradead.org
X-Gm-Message-State: AOJu0Yxs+kmN0X2VtQ/Q9M/zLA0NVaKU0IPGXJZpyGxNObBZAjmLUEHb
	jVxUZ2AIwPyoDLfggV9h3nhN2ApNWLscPCUd7BfNSnL3Wuo6bkQ10kyRddwIEayuCxhTiv2JarV
	P+++vXsJpM6hd+q96ZzdnO6HT2ChjtlaHof8I2JtXIjF0pXCZpSO9Pashd77eGSJ4Tb6s
X-Gm-Gg: AeBDievhrws5eFBHV3snb5mmHowFVLJKiJY3wwVTpyLqMnK5A1wiKqiZTMi89XSIvMl
	EZJxNShoOnKYtVdNH0wXASj/cBS5ynZzpdnXyGyqOS4iiyKC2W/UPFypWEJuUqTQ1RxY6LHdXx3
	ch05rYANB5OQXuFHMeGJTutC0HH2IV7nbfWgXnpwEHJNdSICxZ0RCGa85XWRSgL/FrcjJMFQKuw
	yl+v1MaJB/buTbksKcjnJrnS3+2uC2DdXO5vVfC15p510ANmP+zPcz5AR7K3wyyUHTZL1+RBzWo
	A+P5n0IOpKNmCqRn0pUfnPkWGJDz1B3t2rmlvCdmoUPscPJyFovWIgIj8ex+rNV/92+rE+P//oQ
	NhytkTqAdVRvlY6vc7mvN0mLJ5DpXPorceMJH/22+j/12Gtp2QkndlJB5+M3rQTD5mlK0ckgWJy
	JXE/DWtIhAqLJzog==
X-Received: by 2002:ad4:5b85:0:b0:8ac:b9e7:a95d with SMTP id 6a1803df08f44-8b0281482dcmr450411526d6.6.1777287569770;
        Mon, 27 Apr 2026 03:59:29 -0700 (PDT)
X-Received: by 2002:ad4:5b85:0:b0:8ac:b9e7:a95d with SMTP id 6a1803df08f44-8b0281482dcmr450411246d6.6.1777287569240;
        Mon, 27 Apr 2026 03:59:29 -0700 (PDT)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ba454d1bf00sm1082130366b.33.2026.04.27.03.59.26
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 27 Apr 2026 03:59:28 -0700 (PDT)
Message-ID: <ba3674ab-fdba-4211-9634-610e10802270@oss.qualcomm.com>
Date: Mon, 27 Apr 2026 12:59:25 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 4/4] phy: qualcomm: qmp-combo: Add support for Hawi SoC
To: Ronak Raheja <ronak.raheja@oss.qualcomm.com>, vkoul@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org, robh@kernel.org,
        neil.armstrong@linaro.org, gregkh@linuxfoundation.org
Cc: dmitry.baryshkov@oss.qualcomm.com, abel.vesa@oss.qualcomm.com,
        wesley.cheng@oss.qualcomm.com, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        linux-usb@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20260425070002.348733-1-ronak.raheja@oss.qualcomm.com>
 <20260425070002.348733-5-ronak.raheja@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260425070002.348733-5-ronak.raheja@oss.qualcomm.com>
X-Proofpoint-GUID: O5V6-R-2DdXpU132TGKAkhcGSq69cVpE
X-Proofpoint-ORIG-GUID: O5V6-R-2DdXpU132TGKAkhcGSq69cVpE
X-Authority-Analysis: v=2.4 cv=DZEnbPtW c=1 sm=1 tr=0 ts=69ef4192 cx=c_pps
 a=wEM5vcRIz55oU/E2lInRtA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=A5OVakUREuEA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=yx91gb_oNiZeI1HMLzn7:22
 a=EUspDBNiAAAA:8 a=1tJ3z92Lny5kRZNiqYQA:9 a=QEXdDO2ut3YA:10
 a=OIgjcC2v60KrkQgK7BGD:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNDI3MDExNiBTYWx0ZWRfX6GixTUS1eNu0
 w2L2ai3A9Nr2fQ8Eq6yrJwRHuUnLWFFRzryLBoK2ifmAnCQXhiZmLiFucHY/iguAwR6FHPuceck
 yR/lbA9CDTH1J4iCYOydfKW5ZEXRX9ShVcbVDZAIBVvx0MpHLPF2AG+KSTYQZLSgDXbjS6P/7UK
 BsjUDtBv7OqenMInGbGTc3IlokmmpA/oGrXCIRHwI3rI3K6j5xXaomUOQAm4ZG3dni5DujYBoqH
 Y/weucdtpw+wNqd41H5Q9GufXzEpppaxnA43LZXqzavtyLJm08DfL/G2i/KoSHtN8ayL3MUAiXY
 6jBMYND6BipG9mLCglX7EV0YA+bPWiZuWBtN6YhoKHo1krWSnOAn1zZ3w45Qea+TiV7KKXwxMhS
 0BqQCUf+LCO1iLOfI4RsgcA3lqQdSJ1c9k5Vgh2Bt1Q9YDa7uRZPA/NCjb47dJWfeLbyFzFHEHe
 uaoBURBIRHDbFkxEc4Q==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-04-27_03,2026-04-21_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 phishscore=0 spamscore=0 adultscore=0 bulkscore=0
 lowpriorityscore=0 priorityscore=1501 malwarescore=0 impostorscore=0
 suspectscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2604200000
 definitions=main-2604270116
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260427_035931_722189_9D7331FA 
X-CRM114-Status: UNSURE (   9.50  )
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

On 4/25/26 9:00 AM, Ronak Raheja wrote:
> Add support for the USB3-DP combo PHY found on Hawi platform.
> 
> The QMP PHY for Hawi uses QSERDES V10 register layouts. Add the required
> PHY sequences from the hardware programming guide and new V10 register
> header files. Also add a new v10 offset structure to incorporate the new
> COM AON register module.
> 
> Signed-off-by: Ronak Raheja <ronak.raheja@oss.qualcomm.com>
> ---

[...]

> +	QMP_PHY_INIT_CFG(QSERDES_V10_RX_RX_EQ_OFFSET_ADAPTOR_CNTRL1, 0x27),
> +
> +	QMP_PHY_INIT_CFG(QSERDES_V10_RX_SIGDET_ENABLES, 0x0c),

nit: stray \n above

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
