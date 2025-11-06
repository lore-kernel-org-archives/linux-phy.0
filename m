Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 89D95CCFA03
	for <linux-phy@archiver.kernel.org>; Thu,  6 Nov 2025 09:01:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=J0aXHfNcTDprxHjY+BB6qBy2xVeUYAtyGFP8FPmf1SE=; b=yBYKwEb2UugsNy
	Ge/7Rp1XwU61de6TqHNPnSpFj+2TCFIifPn56u6oDq3NVcb51LL9U3FmHB7bKrDYCbNvOVhm3UwON
	Gu6AcPMSJPlG3VwZyZRVnLPH7WBGtiAOlROpXhi5ex6E02fI81SkaV13Y4x9V3SPcKeON25vlF4gL
	lbtMl4yWu7jdNwPnpX/WBM0Plu0toydIXrqVfPC7Mofhe7j/aHi4BzMpy/CRMWIJNc1qQAQ2ZcYlN
	t2NwRxsjVow+uJ/yRqW163rCMfZP7vdIvqWDl9F6/sYFAx02iuJEPlHnqve3I9jrU/IKlxA1UJFrL
	l3il1tYlSUf7GlzUWs9w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vGvrg-0000000F7FD-1K3W;
	Thu, 06 Nov 2025 09:01:08 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vGvrd-0000000F7Do-0WWu
	for linux-phy@lists.infradead.org;
	Thu, 06 Nov 2025 09:01:07 +0000
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5A66AK191938500
	for <linux-phy@lists.infradead.org>; Thu, 6 Nov 2025 09:01:03 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	PtoKKtNoi4tQYPNVCx7ZmLMBn5/f/cR86N8wMznH7A0=; b=KU9yQjR4q0MSmJ49
	dm1vxcMOmodOzw8bCzO12TPJftOC9uGSOicJglLM08uWiH4xBecqjVTrnkFtt564
	1qjrWJNJgnDsHvQpJbF4o8wuQySL+9btCSnt4nOpkiMF/cgEf7+EJVyJRPeaLTFC
	LkiW+WqviZFf6xt72CQnnquRyvScSsK8Akd15LjSVYPqdRXWCpq1s/sIfFwwz3Ol
	r6RJszaHw0hZn+Ju1yJvUdVIRQUw0PtcsR1jicUcU3meRKBYNJDuqf+o+ngudnJR
	k8/cjLHTyde7ute2Z5Zn6RTAwmuCZSlCMeXmKwZbagGdKHyVNW1m41zbl9KYb896
	auFCPA==
Received: from mail-pf1-f197.google.com (mail-pf1-f197.google.com [209.85.210.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4a8apgteeq-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Thu, 06 Nov 2025 09:01:02 +0000 (GMT)
Received: by mail-pf1-f197.google.com with SMTP id d2e1a72fcca58-78105c10afdso1017226b3a.1
        for <linux-phy@lists.infradead.org>; Thu, 06 Nov 2025 01:01:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1762419662; x=1763024462; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=PtoKKtNoi4tQYPNVCx7ZmLMBn5/f/cR86N8wMznH7A0=;
        b=Ba5vhN7h29xo01zJN+3bWWTeqtwLBjZ15ERh6Yi6IpVGxhtofQ44YI80ReZ4SABa9p
         +OU1n8mYLmBpY6YTyjYGlGAEpqKicHSPt4Pb6HCO8fDT9T+Q+r67fN1YELSomtOvwUDG
         T1AJqXZTNWH1ypLA0dwJB0hL77knpxN0GjKf5uM4hFGJPfRaYXu/Qm43vSw7yQbgfhf2
         wOE8e00xEcobrCo+lT7Y9DMF55kljk8Un6cGje8Wz3j0WDQ5KTQ1RT1gZgi0mnsIPALw
         x3Hw5gQic3rKoae6FReOYT4Gmuz1v1YWq2nvxNYfPb7Lh+GZBZasV46gxB7fkPlJ+Isl
         iwKA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762419662; x=1763024462;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=PtoKKtNoi4tQYPNVCx7ZmLMBn5/f/cR86N8wMznH7A0=;
        b=Fkzl+JuxywD+lLCuEzbi7OBa6AywCPe3mFB24daE1cFwh37hulSE0zfsHBs/WS4nC7
         rk4pkxnfALDfo+Tyd+L3gcuC0/QPlgUSTIHwa0A2Rg+PmC/v/4jtWpNAOPN0txt+IC5B
         +VqlRe0jq/zLgTKCPZLYt7rO15qw7y9gK0h53LomxyQp1WTpTD7Xp/jhj54FuwfyuSsR
         IUKDrLJSdkmdjyVbKHzq5I5O/694zjNB/B/z/EmLZj4KVBRcn/VK86wmouMsRiuKNpcD
         rWPsfpwDSvzxfABpFI6oUPtHjsijMEksnnRqKKkUe9k9Oc0T3xsYZR7JGsQD6lpzI22m
         ksXw==
X-Forwarded-Encrypted: i=1; AJvYcCVeaKlqxpT95Oq0Hrc9oPikfF1UXWR0LPXYGcEJlb6cRXVdZkBoNlbYD3qCHxaZLPQaRqcmLd4H2Wk=@lists.infradead.org
X-Gm-Message-State: AOJu0Yy9v8aUBfQoPI5v7jqzeZhXPvh0bMH1V0WnKgckZxZriqKcktg+
	TJbWuiz8SmzihR0NlbH7kXUARPLFYMDkCQRHKR+I+ntPJGkp8XTJZE0HSEkXa1CaoFIKLFARQtL
	4jAVMzEkJL6KR0qIoRkIJp6CDulIbGEllugG0EQtUbLjs/72Dpln6apxSxW8Gm2OjkMqH
X-Gm-Gg: ASbGnctZtO4t+etas7NNZkKC7NYsnQvKkDci4SH8tiNp0GfahiDOZHhkitIvC+2QDPK
	Y7JUJfbOlTVI4Ogb2H4C9OPInlFNJbNOGp3sz+13aasoYSZtKwQYeOdyc40KlVitEQqo1MlYKnl
	inEIVDcp816/f0uA7R+0ps3OQYUewt9jpUKVeNcmHU7Cexgx8ZEtBNJuiKpNgTT3hubB2nZrZO4
	MLH++W9mtsK2L1DghDPRqpt0A6UVjgZxWyhgPq82GFrymjkGonjgYqCm1fu0NZd1GGBudkTcl/N
	HaCCfI2tv0SWeYpo59ddXeY8KbjsUZFLz1F7KvaQ2I13Fra+szsdONb+NpcJoLdqb5ZkZmtB3PF
	yidT2epQScBxSbFQ/1QIRBxA798SROM/EtAyD7XrDRq6VC8VJ615GnVls0mGBYkNN
X-Received: by 2002:a05:6a20:258b:b0:34d:fcc9:2272 with SMTP id adf61e73a8af0-34f836ef31emr8825086637.5.1762419661592;
        Thu, 06 Nov 2025 01:01:01 -0800 (PST)
X-Google-Smtp-Source: AGHT+IH8t+GNpTY18rySL2vGh08/gFSj3q+kAMQBIFky233fS+n9VOYCuiclCi1nHnFv2zQiTzXsOQ==
X-Received: by 2002:a05:6a20:258b:b0:34d:fcc9:2272 with SMTP id adf61e73a8af0-34f836ef31emr8825020637.5.1762419660986;
        Thu, 06 Nov 2025 01:01:00 -0800 (PST)
Received: from [10.133.33.196] (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7af827f0552sm1965612b3a.51.2025.11.06.01.00.53
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 06 Nov 2025 01:01:00 -0800 (PST)
Message-ID: <1ad1fc7d-7b6e-403e-936c-4c5a12d4e6f4@oss.qualcomm.com>
Date: Thu, 6 Nov 2025 17:00:51 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v14 0/5] pci: qcom: Add QCS8300 PCIe support
To: andersson@kernel.org, konradybcio@kernel.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org, jingoohan1@gmail.com,
        mani@kernel.org, lpieralisi@kernel.org, kwilczynski@kernel.org,
        bhelgaas@google.com, johan+linaro@kernel.org, vkoul@kernel.org,
        kishon@kernel.org, neil.armstrong@linaro.org, abel.vesa@linaro.org,
        kw@linux.com
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org,
        linux-phy@lists.infradead.org, qiang.yu@oss.qualcomm.com,
        quic_krichai@quicinc.com, quic_vbadigan@quicinc.com,
        Ziyue Zhang <quic_ziyuzhan@quicinc.com>
References: <20251024095609.48096-1-ziyue.zhang@oss.qualcomm.com>
Content-Language: en-US
From: Ziyue Zhang <ziyue.zhang@oss.qualcomm.com>
In-Reply-To: <20251024095609.48096-1-ziyue.zhang@oss.qualcomm.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTA2MDA3MiBTYWx0ZWRfX2K9nZTdW7rO3
 jKs/49mrWdes9QK6+hcjwJtErMp0o9OGaC3i4Sb8VRnPFEQYqjatbkYhvZZpMQB3PGWiXOw41Cp
 ZUAMSSsPRa4CpV/KqucKyw9BWOPm5qo1YYuGc7NtokBB7wffSfjSu100AXjA1u7ebKC3QGhkglv
 9k5XlU/AH/wlAxgSyx4ExOwTPCUWgbCNM3hyQwRM+PgSMo3Pa6aaO/IRiAc58T0XdRS7ykcsVLQ
 MQ7xUpNUs/twtFxv5pcyqC42mmCB6ddp37YPgXtf5L81m1tjIpiXaGpubVrrJ8S6y9f38UgxHgW
 o46Em5tPb4cQUkywT1tvS+3pLtu9rdg4sExcqzYDvPg4gg5QG2Nt8nazE8fVOkToEnlEsIrseTz
 R4bjKU9vAfm3IThGEuLimo0P4Ye7ZA==
X-Authority-Analysis: v=2.4 cv=LoCfC3dc c=1 sm=1 tr=0 ts=690c63ce cx=c_pps
 a=rEQLjTOiSrHUhVqRoksmgQ==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=IkcTkHD0fZMA:10 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=COk6AnOGAAAA:8
 a=QyXUC8HyAAAA:8 a=IHEL40AIkIxnPEiLsFYA:9 a=QEXdDO2ut3YA:10
 a=2VI0MkxyNR6bbpdq8BZq:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-GUID: UaBqzIirFjr61nd_y5jgudk7PlRv-mN6
X-Proofpoint-ORIG-GUID: UaBqzIirFjr61nd_y5jgudk7PlRv-mN6
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-06_01,2025-11-06_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 lowpriorityscore=0 clxscore=1015 malwarescore=0
 suspectscore=0 spamscore=0 phishscore=0 impostorscore=0 bulkscore=0
 adultscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2510240001
 definitions=main-2511060072
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251106_010105_308673_0A03932F 
X-CRM114-Status: GOOD (  21.07  )
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


On 10/24/2025 5:56 PM, Ziyue Zhang wrote:
> This series depend on this patch
> https://lore.kernel.org/all/20250826-pakala-v2-3-74f1f60676c6@oss.qualcomm.com/
>
> This series adds document, phy, configs support for PCIe in QCS8300.
> It also adds 'link_down' reset for sa8775p.
>
> Have follwing changes:
> 	- Add dedicated schema for the PCIe controllers found on QCS8300.
> 	- Add compatible for qcs8300 platform.
> 	- Add configurations in devicetree for PCIe0, including registers, clocks, interrupts and phy setting sequence.
> 	- Add configurations in devicetree for PCIe1, including registers, clocks, interrupts and phy setting sequence.
>
> Signed-off-by: Krishna chaitanya chundru <quic_krichai@quicinc.com>
> Signed-off-by: Ziyue Zhang <quic_ziyuzhan@quicinc.com>
> ---
> Changes in v14:
> - rebase patches
> - Link to v13: https://lore.kernel.org/all/20250908073848.3045957-1-ziyue.zhang@oss.qualcomm.com/
>
> Changes in v13:
> - Fix dtb error
> - Link to v12: https://lore.kernel.org/all/20250905071448.2034594-1-ziyue.zhang@oss.qualcomm.com/
>
> Changes in v12:
> - rebased pcie phy bindings
> - Link to v11: https://lore.kernel.org/all/20250826091205.3625138-1-ziyue.zhang@oss.qualcomm.com/
>
> Changes in v11:
> - move phy/perst/wake to pcie bridge node (Mani)
> - Link to v10: https://lore.kernel.org/all/20250811071131.982983-1-ziyue.zhang@oss.qualcomm.com/
>
> Changes in v10:
> - Update PHY max_items (Johan)
> - Link to v9: https://lore.kernel.org/all/20250725104037.4054070-1-ziyue.zhang@oss.qualcomm.com/
>
> Changes in v9:
> - Fix DTB error (Vinod)
> - Link to v8: https://lore.kernel.org/all/20250714081529.3847385-1-ziyue.zhang@oss.qualcomm.com/
>
> Changes in v8:
> - rebase sc8280xp-qmp-pcie-phy change to solve conflicts.
> - Add Fixes tag to phy change (Johan)
> - Link to v7: https://lore.kernel.org/all/20250625092539.762075-1-quic_ziyuzhan@quicinc.com/
>
> Changes in v7:
> - rebase qcs8300-ride.dtsi change to solve conflicts.
> - Link to v6: https://lore.kernel.org/all/20250529035635.4162149-1-quic_ziyuzhan@quicinc.com/
>
> Changes in v6:
> - move the qcs8300 and sa8775p phy compatibility entry into the list of PHYs that require six clocks
> - Update QCS8300 and sa8775p phy dt, remove aux clock.
> - Fixed compile error found by kernel test robot
> - Link to v5: https://lore.kernel.org/all/20250507031019.4080541-1-quic_ziyuzhan@quicinc.com/
>
> Changes in v5:
> - Add QCOM PCIe controller version in commit msg (Mani)
> - Modify platform dts change subject (Dmitry)
> - Fixed compile error found by kernel test robot
> - Link to v4: https://lore.kernel.org/linux-phy/20241220055239.2744024-1-quic_ziyuzhan@quicinc.com/
>
> Changes in v4:
> - Add received tag
> - Fixed compile error found by kernel test robot
> - Link to v3: https://lore.kernel.org/lkml/202412211301.bQO6vXpo-lkp@intel.com/T/#mdd63e5be39acbf879218aef91c87b12d4540e0f7
>
> Changes in v3:
> - Add received tag(Rob & Dmitry)
> - Update pcie_phy in gcc node to soc dtsi(Dmitry & Konrad)
> - remove pcieprot0 node(Konrad & Mani)
> - Fix format comments(Konrad)
> - Update base-commit to tag: next-20241213(Bjorn)
> - Corrected of_device_id.data from 1.9.0 to 1.34.0.
> - Link to v2: https://lore.kernel.org/all/20241128081056.1361739-1-quic_ziyuzhan@quicinc.com/
>
> Changes in v2:
> - Fix some format comments and match the style in x1e80100(Konrad)
> - Add global interrupt for PCIe0 and PCIe1(Konrad)
> - split the soc dtsi and the platform dts into two changes(Konrad)
> - Link to v1: https://lore.kernel.org/all/20241114095409.2682558-1-quic_ziyuzhan@quicinc.com/
>
>
> Ziyue Zhang (5):
>    dt-bindings: phy: qcom,sc8280xp-qmp-pcie-phy: Update pcie phy bindings
>      for qcs8300
>    arm64: dts: qcom: qcs8300: enable pcie0
>    arm64: dts: qcom: qcs8300-ride: enable pcie0 interface
>    arm64: dts: qcom: qcs8300: enable pcie1
>    arm64: dts: qcom: qcs8300-ride: enable pcie1 interface
>
>   .../phy/qcom,sc8280xp-qmp-pcie-phy.yaml       |  17 +-
>   arch/arm64/boot/dts/qcom/qcs8300-ride.dts     |  84 +++++
>   arch/arm64/boot/dts/qcom/qcs8300.dtsi         | 310 +++++++++++++++++-
>   3 files changed, 394 insertions(+), 17 deletions(-)
>
>
> base-commit: 72fb0170ef1f45addf726319c52a0562b6913707
Hi Maintainers,

It seems the patches get reviewed tag for a long time, can you give this

series further comment or help me to merge them ?
Thanks very much.

BRs
Ziyue

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
