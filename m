Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 15456CD4F25
	for <linux-phy@archiver.kernel.org>; Fri, 15 May 2026 10:37:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=A/yPp93cCOX6iAZ3ca+i4QeymSc1T+x7xASmTcMrgsE=; b=ot/Q7pfZ3tV0Bx
	6v1S0m6pbIcVSULA0ueKpM07vDefJg0TkHp5osVtSyiHCliONapnGyWZlnyQ8cDMkOEIVA2msBCdI
	vrqsirZTLmNTUqPSElwT/TG2BYVn/ugx6CnDXOEj97ZNx28i7lWCUYjLocwVb1hK1Vm909KrhhrS/
	a3vRUasjOEyjRqg32MPusKAAtAm+7sGB2NUkzcQrdWfHU991q+5js7bPKy93zwVzDigt/Wqjev1W7
	O4qKQv2BrvfjakoGwgB25cAsVIyYkWdeTS3UDEEpybXOMocSYuosadfP9pxDwqYrA3xlBGp6of5ag
	8/6vTgkZlnqbOMwWJl2Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wNpvD-000000084SJ-2rnq;
	Fri, 15 May 2026 10:37:35 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wNpvA-000000084RR-3yBn
	for linux-phy@lists.infradead.org;
	Fri, 15 May 2026 10:37:34 +0000
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 64F4m9ZM654908
	for <linux-phy@lists.infradead.org>; Fri, 15 May 2026 10:37:32 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	VvbGXS2kE9zWNc5GpgcccNRZaDS08RE8hpzanRVUMOE=; b=GWVEUiSA3y599VxP
	PumCYLmwl71QWmb8uCw1z7y5MHaXMEjidj0PZ8v6NjmdhJrCs35UooKfmwl7OjC7
	yT1d870mm/U980fmjS0xppCjXxTmjl3nt5vEDH3nzJPqnOvY2mtLHXwY91aRdpyJ
	DlBewtmCX2dkvh9m583EB95DcaJRIvv3U+0DqYzZM7X4pCrOj88dtSaFIauNqVM+
	A0Vo8QnGwp25YTCDSw/DQKDa1rYAGQgDpiPubOc5Oj7Sd4iVqGD6ynTfnwMPOBuf
	y9YQXQIp2l3zoCf09CUXMPLgCo9/SUscDJawRtxZQGVRdTX6Hg6lrraVu7hL/aEB
	u4OG5g==
Received: from mail-vs1-f70.google.com (mail-vs1-f70.google.com [209.85.217.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4e5m1ptx0j-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Fri, 15 May 2026 10:37:32 +0000 (GMT)
Received: by mail-vs1-f70.google.com with SMTP id ada2fe7eead31-63126f42441so635617137.3
        for <linux-phy@lists.infradead.org>; Fri, 15 May 2026 03:37:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1778841451; x=1779446251; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=VvbGXS2kE9zWNc5GpgcccNRZaDS08RE8hpzanRVUMOE=;
        b=GqmszNttc9g0nAKudJnUVUtu3jdH6RPlVgtRwgJ0dtIF3h4M5yc4w6P3byoB6B3UQD
         67lNJk23lUEbBzcSO3ElZgFkRDldzoNKsPDsFWNCo6CBOv0xsRhMadTEsT48m6MxVzc2
         aXvrYQRwRSF6r1HoWbldoOOC57VQddU+6enan8uXdWu0Ra4mlenExeFWrALrzPFLTAt5
         SNdp2qMQFGlj2/kSZCemfXYk/e4ybKomGtblu+qBLdzMInIAjDjKSaV+HOGg/Cu/x/wH
         lyKlVHEEZbiDPme2VwA22P6gcYRYx3TKM8tIcswU9LpoRE+dPPCtwWV+fElBKaaCA4sw
         hKFw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1778841451; x=1779446251;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=VvbGXS2kE9zWNc5GpgcccNRZaDS08RE8hpzanRVUMOE=;
        b=UU7Njrx7j+yw9JkqUO8ZGV+7fh3snr66IZ7Qb14hqdZ80pGwMMmKkmXvtzWEhQI6u0
         dznPBnM7tYc3Uo4lC7Ra1ejNUiGUxvaQQgNQQ+HoMJdX7bt4YoNDdmlO+TZA9GTICLZj
         zFalsK10Jkoo8fUCvs1Lk0dSkXk1rsBPdyi4H3uDlcOD2LR+K5EeK42wOByIQdjgeCGH
         FsUmGiN8e9+y8wYX9RvQsTEfhE1EOneE2L5cEn6eS8Z0hu1xaXiVY9J3DlumXQg1JjIZ
         jFYaO9Iw9EcE9MOAGfNd6PLs+QT9rJqsuNyp0oY8ICpa4FbxnLlezGlidPAEdzMEhUbF
         a9FQ==
X-Forwarded-Encrypted: i=1; AFNElJ95gpQUtiaBNYPy5keYUooRp7Vxenq1nD0Rpz8XtWR2f2w/eg/6jJS6qovXPkSkwEC+UqnEvXAkR+M=@lists.infradead.org
X-Gm-Message-State: AOJu0YxaWDddE2IkNnCe2uT8RPQfu8m3MpqKx0xvllIwL4NqVvoz2hQ3
	JZYkgWprhgPOtHSFF+1hebLoQ9mbz1f4BLwByPPm2yZTu1S5pwImAA3ZhkS4JrCJrSHOOLOMblb
	ci6pmx9TosT0IlNKQHwOwxfc7TQWiw03/mEznrcdFYGFVVB6Y1Zx1J4byALnCZ1RdZuuc
X-Gm-Gg: Acq92OGxOb2CTYfluXFdVIklqusr5PpqSHSR7IP6erdJkOB4sPBXjsSc3XbXFHMbJvu
	OAyHlLgn+jhHwPCiqYe1rAgJK5XqZgaJnKlGonwl/LM2HSBWJrKEtXPN/9fZ4ZX7nbR1UF9CBvh
	4/yDvjcApY90rM4fMi2KwW/RAtESJYvS7zE35l0oK0XNwixqOq9peAcitKoyI8/ybKdsCgI1WFV
	tpWjG3lT1tKn1iejTYYBLQBeNHRFjHnA8SNIJ2MT5bxhBJAUU3WQ2wotTIjeJ0pStTumAS3jVgb
	MUp848PV/YQAiSeWcqTCcEHDC7x2GSZjA8FfnDOc1UQNhK4Li/2Gw7sCsZyUQ9U+X3fNNCIcJx/
	Itfj3Jk/lNwMM75P9fAotNodxoZSTIWHk/bfbDKAINe/HE7IkjQmeXZSiAf5KjMHDbPCx0GKbQm
	M+gaI=
X-Received: by 2002:a05:6102:2245:b0:631:3ccc:42df with SMTP id ada2fe7eead31-63a3fa98b68mr406177137.3.1778841451434;
        Fri, 15 May 2026 03:37:31 -0700 (PDT)
X-Received: by 2002:a05:6102:2245:b0:631:3ccc:42df with SMTP id ada2fe7eead31-63a3fa98b68mr406147137.3.1778841450885;
        Fri, 15 May 2026 03:37:30 -0700 (PDT)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-bd4f4ec6548sm206391066b.62.2026.05.15.03.37.27
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 15 May 2026 03:37:29 -0700 (PDT)
Message-ID: <ced00124-9ba2-49ca-9200-62abd6ac3340@oss.qualcomm.com>
Date: Fri, 15 May 2026 12:37:26 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/4] arm64: dts: qcom: Introduce Shikra SoC base dtsi
To: Komal Bajaj <komal.bajaj@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>, Vinod Koul <vkoul@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Wesley Cheng <quic_wcheng@quicinc.com>, Ulf Hansson <ulfh@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-mmc@vger.kernel.org, Imran Shaik <imran.shaik@oss.qualcomm.com>,
        Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>,
        Monish Chunara <quic_mchunara@quicinc.com>,
        Rakesh Kota <rakesh.kota@oss.qualcomm.com>,
        Raviteja Laggyshetty <raviteja.laggyshetty@oss.qualcomm.com>,
        Sneh Mankad <sneh.mankad@oss.qualcomm.com>,
        Vishnu Santhosh <vishnu.santhosh@oss.qualcomm.com>,
        Xueyao An <xueyao.an@oss.qualcomm.com>
References: <20260512-shikra-dt-v1-0-716438330dd0@oss.qualcomm.com>
 <20260512-shikra-dt-v1-2-716438330dd0@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260512-shikra-dt-v1-2-716438330dd0@oss.qualcomm.com>
X-Proofpoint-GUID: kip2MqMMSR12KGTsmilAxhbCWkY5Woy1
X-Proofpoint-ORIG-GUID: kip2MqMMSR12KGTsmilAxhbCWkY5Woy1
X-Authority-Analysis: v=2.4 cv=GrhyPE1C c=1 sm=1 tr=0 ts=6a06f76c cx=c_pps
 a=N1BjEkVkxJi3uNfLdpvX3g==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=NGcC8JguVDcA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=_K5XuSEh1TEqbUxoQ0s3:22
 a=EUspDBNiAAAA:8 a=ids9KMZMtRugHLbRT8AA:9 a=QEXdDO2ut3YA:10
 a=crWF4MFLhNY0qMRaF8an:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNTE1MDEwNyBTYWx0ZWRfX4wtdpwyylCr6
 ZoIJ4Lbou2KU7roLk6w6uOFVN/c6mz2V20CCFjMJLt7MhYYBrYXs5aF2rQzAdA+ePbaerqjB9e3
 PMuIRGljTBXvVDnMQOqzNv9L+XrACIKvVFVhOjRTZZvXUMmmoia6lR6RVzrh0ZgIIcPUzk/6AQh
 wtKKv+8JKjDAwBYw5zhdKmcczAHUkslFmyxXHe3mkbs6ym+xZ9m82UHfMug4EI3KiK+duY7Z5cn
 iRpcYaCefSOpCVJf0tzqjh5DNKtZ3++mr1o6R6IuoBpe+AMMlS2+hFJEtx1ZdWt0Umzi9+sMiV8
 dHYF47hM731oreqpBTLM2ZCcDpfBNuC5EMI+UCfT5s6ZcdBWUbeyMAEUB603rQbZPRSeOwTNzNT
 mywL8ECcNingp5++AgPe0wnKxJcJUNtNtqnKtTPR/MFCje42reE+ZsQszcljJdk3eFmTPbepgwR
 3mnjnvbDG5OZ86nFGTg==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-05-15_02,2026-05-13_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 clxscore=1015 lowpriorityscore=0 adultscore=0 bulkscore=0
 spamscore=0 suspectscore=0 impostorscore=0 phishscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2605130000 definitions=main-2605150107
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260515_033733_002967_7C18B2CA 
X-CRM114-Status: UNSURE (   9.38  )
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

On 5/12/26 6:08 AM, Komal Bajaj wrote:
> Add initial device tree support for the Qualcomm Shikra SoC,
> an IoT-focused platform built around a heterogeneous CPU cluster
> (Cortex-A55 + Cortex-A78C) with RPM-based power and clock management.

[...]

> +	pmu {
> +		compatible = "arm,armv8-pmuv3";
> +		interrupts = <GIC_PPI 5 IRQ_TYPE_LEVEL_HIGH>;

Considering there's 2 core types, you may need something like:

9ce52e908bd5 ("arm64: dts: qcom: sm8650: switch to interrupt-cells 4 to add PPI partitions")
2c06e0797c32 ("arm64: dts: qcom: sm8650: add PPI interrupt partitions for the ARM PMUs")

> +	};
> +
> +	psci: psci {

Unused label, please drop

otherwise:

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
