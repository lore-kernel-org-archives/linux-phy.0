Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A365EC282EC
	for <linux-phy@archiver.kernel.org>; Fri, 14 Mar 2025 22:42:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4y71ahuS2ggTCsGTSy9mhvOTtXEGZ2lFx1B6aYkujhM=; b=45+CbvcUEZVzZr
	hYmmBpFW8mt7RGsLQMtihP7mU8PtdNSSclkwC2qgWg0vQLI+f1o6JfHFpbNsK5vb3YD+IDJ8BZTd+
	qaeAnV1LU0CmxjNkcmZhc1joz1Pp94N/9wnJGD453IvUE0+acnjL+uXHwu3Hg0cG4VF/xhksli8Dg
	X1ZkPYiE2QtXq8ERqlGo+MKhoNxSzy1IExaiJKUTxUd4P/0amxDNUUA+klc6NCLV6iI1dcHHJJ/eD
	pJrqG2RtdFBD0WpMw8LuMJw2VbL8AbD6Qeg3GhoYq7e6TFKq4c3vr4PEH2sXpGoToG8+T3P/2H9cp
	Hbvl2PNZEJX9+K4HbCug==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1ttDjk-0000000FSNq-0tKL;
	Fri, 14 Mar 2025 22:42:40 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1ttDjh-0000000FSNR-3W8C
	for linux-phy@lists.infradead.org;
	Fri, 14 Mar 2025 22:42:39 +0000
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 52EM5P7q022211
	for <linux-phy@lists.infradead.org>; Fri, 14 Mar 2025 22:42:36 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	kIwDE800oX8SYV9AWJVrX+Iz/rjOe6oMe8ZrMZYcGfc=; b=K86bMvDDz1zXZtfU
	Y1nKZIuYX1m5faULFMakMSkkST3FLllY8Y4nV4vaMG4SWtBQedcbavML+YbgbNH4
	hP3bieS7xbJI3aGFWDUYQS/l+r0NOSU6rBXnOYGlNyeETQWoJ0e6aTJvuHkCgMUH
	qTnMtkbsWAawyAXj8zzW+Qzg6cblYasLc0mzLgmoUVIHsTWZaAcsSHGepzPBApjk
	jCdi8lsCPm1Lc7LySzLwCRCAlASr6+/086ipzmX5twhTOQHEGss/teqfH0AnGPXu
	6DHUM+3DTlg87P0ODM54ceQN33aZeYoH4eAl90rUp8c0I7vwBwC08xY9DOtN1/G3
	JzcDlQ==
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 45cvxn024s-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Fri, 14 Mar 2025 22:42:35 +0000 (GMT)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-476786e50d9so6695991cf.1
        for <linux-phy@lists.infradead.org>; Fri, 14 Mar 2025 15:42:35 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1741992154; x=1742596954;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=kIwDE800oX8SYV9AWJVrX+Iz/rjOe6oMe8ZrMZYcGfc=;
        b=KzBRMYNqolkqPiHR6FHqh3z+t3GndpIQzpZ6sX2vZlZuJjRTLMm0/ibSj/WNdfRnpi
         ThN+CAcxdLrEIb8/U90g0oNvtuqfL8QBwpQSvAMbg/NysURnDAtGkd532k/gLi3rG1O7
         v4jDU4+6s4IwObqT5ZNFhjHn+jZVmM2HYPh/QHy0NsNtGjWkYv434mJNtHpk8f+Zxyqq
         uWMiCUnwc6VmyYH8hWBcrn4c7g3BFZ3tOedHOlgK9rEyxPqe9ir5DMeDQJagARVMGWes
         X+M/j/sR5dsUT+awR/ys/I/9XqTO94cfO7ciEivUx1uViEkhrJ25yHeLV0fGc6vOIJM9
         GtTQ==
X-Forwarded-Encrypted: i=1; AJvYcCWYP57pnvinhG6XJ5uPQCb1JaR6b0E35qEZi+6XT1NmirQXwTrV6GRnOa+rR8IdHtLsfMRTHV2yN30=@lists.infradead.org
X-Gm-Message-State: AOJu0YxLa/p2n2vTEC2nfpg1wJEyQknGyAw/RcVaF+mTIwd/hdg8eZar
	t42SOtvUaQRsu6tgW7sYk5E3V6hQ9YyE1kVLIOV+khtm48R6EEHElKjLzKAfGZShXMevtOjqeto
	1GxaC1m0tJFkDOnoERg8SqxVza0lDVELe4CEFWAe2rPRj0jwT7IDMWANPFGMOhJW6OhekUmfw
X-Gm-Gg: ASbGncvK3QkMkWOcxfDhzSOFjfxHgVX2I4ex6tXtCHHCHfqowts2WQGcyAPIokK93Hc
	stKysoWfkKNOI8KP86UnUyw/DHZG0PQ5MfR06d6ZKQ1rURuckg3m66xXeVILIiarCnzxb/g8AAy
	6byPVKhzuW7XN37xc2dXoK8bFPCZlPHoaW9cVbDveUOA78zF29DUS9OTZXncLMRyJZtyVksMpw+
	+PQw6oiXseD/sZjiB6mh0HJN2ALt6hBIxLm4OBmLixlxmkwQaQ5EaZ2VRY+fr6pBFcUv6ApZJLE
	iCVGbv/JPVY2RRuHVksDUsWd5sm0Li+si+iBkvCitnvZIMvgk2JLBdhaKMfUhvoiRK+TFw==
X-Received: by 2002:a05:620a:31a4:b0:7c3:c814:591d with SMTP id af79cd13be357-7c57c795580mr195582185a.1.1741992154032;
        Fri, 14 Mar 2025 15:42:34 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IF8g9fIKijnYR1RXDYNW9bZ5XeEGfn0A87clOCpiGK6J3Egz2X0NW4LerMPqQE+/r79PX8g/w==
X-Received: by 2002:a05:620a:31a4:b0:7c3:c814:591d with SMTP id af79cd13be357-7c57c795580mr195580685a.1.1741992153588;
        Fri, 14 Mar 2025 15:42:33 -0700 (PDT)
Received: from [192.168.65.90] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ac314a49d33sm284366866b.141.2025.03.14.15.42.31
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 14 Mar 2025 15:42:33 -0700 (PDT)
Message-ID: <15ce904b-fd68-447c-aecd-ba7d1d32be0e@oss.qualcomm.com>
Date: Fri, 14 Mar 2025 23:42:30 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5 0/2] phy: qcom: qmp-pcie: Add PCIe PHY no_csr reset
 support
To: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
        Vinod Koul <vkoul@kernel.org>
Cc: "Wenbin Yao (Consultant)" <quic_wenbyao@quicinc.com>, kishon@kernel.org,
        p.zabel@pengutronix.de, dmitry.baryshkov@linaro.org,
        abel.vesa@linaro.org, quic_qianyu@quicinc.com,
        neil.armstrong@linaro.org, quic_devipriy@quicinc.com,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-kernel@vger.kernel.org
References: <20250226103600.1923047-1-quic_wenbyao@quicinc.com>
 <e556e3c9-93ee-494a-be35-9353dc5718e4@quicinc.com> <Z89Ek8Y7TRSgTuMg@vaman>
 <20250314145407.5uuw7ucrdhca4z5i@thinkpad>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250314145407.5uuw7ucrdhca4z5i@thinkpad>
X-Authority-Analysis: v=2.4 cv=C/npyRP+ c=1 sm=1 tr=0 ts=67d4b0db cx=c_pps a=WeENfcodrlLV9YRTxbY/uA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17 a=IkcTkHD0fZMA:10 a=Vs1iUdzkB0EA:10 a=VwQbUJbxAAAA:8 a=COk6AnOGAAAA:8 a=CgR8CRIgTN9bnSrjgiYA:9 a=QEXdDO2ut3YA:10
 a=kacYvNCVWA4VmyqE58fU:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-ORIG-GUID: AqPkDs07ZpgJzMOK5C0XBQSx-u7CWBJI
X-Proofpoint-GUID: AqPkDs07ZpgJzMOK5C0XBQSx-u7CWBJI
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1093,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-03-14_09,2025-03-14_01,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 phishscore=0 mlxlogscore=999
 malwarescore=0 impostorscore=0 suspectscore=0 spamscore=0 clxscore=1015
 adultscore=0 lowpriorityscore=0 mlxscore=0 priorityscore=1501 bulkscore=0
 classifier=spam authscore=0 authtc=n/a authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2502280000
 definitions=main-2503140175
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250314_154237_894732_163AEAC6 
X-CRM114-Status: GOOD (  23.57  )
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

On 3/14/25 3:54 PM, Manivannan Sadhasivam wrote:
> On Tue, Mar 11, 2025 at 01:29:15AM +0530, Vinod Koul wrote:
>> On 10-03-25, 16:58, Wenbin Yao (Consultant) wrote:
>>> On 2/26/2025 6:35 PM, Wenbin Yao wrote:
>>>> The series aims to skip phy register programming and drive PCIe PHY with
>>>> register setting programmed in bootloader by simply toggling no_csr reset,
>>>> which once togglled, PHY hardware will be reset while PHY registers are
>>>> retained.
>>>>
>>>> First, determine whether PHY setting can be skipped by checking
>>>> QPHY_START_CTRL register and the existence of nocsr reset. If it is
>>>> programmed and no_csr reset is supported, do no_csr reset and skip BCR
>>>> reset which will reset entire PHY.
>>>>
>>>> This series also remove has_nocsr_reset flag in qmp_phy_cfg structure and
>>>> decide whether the PHY supports nocsr reset by checking the existence of
>>>> nocsr reset in device tree.
>>>>
>>>> The series are tested on X1E80100-QCP and HDK8550.
>>>>
>>>> The commit messages of this patchset have been modified based on comments
>>>> and suggestions.
>>>>
>>>> Changes in v5:
>>>> - Add a check whether the init sequences are exist if the PHY needs to be
>>>>    initialized to Patch 2/2.
>>>> - Link to v4: https://lore.kernel.org/all/20250220102253.755116-1-quic_wenbyao@quicinc.com/
>>>>
>>>> Changes in v4:
>>>> - Add Philipp's Reviewed-by tag to Patch 1/2.
>>>> - Use PHY instead of phy in comments in Patch 2/2.
>>>> - Use "if (qmp->nocsr_reset)" instead of "if (!qmp->nocsr_reset)" in
>>>>    function qmp_pcie_exit for readability in Patch 2/2.
>>>> - Use goto statements in function qmp_pcie_power_on and qmp_pcie_power_off
>>>>    for readability in Patch 2/2.
>>>> - Refine the comment of why not checking qmp->skip_init when reset PHY in
>>>>    function qmp_pcie_power_off in Patch 2/2.
>>>> - Link to v3: https://lore.kernel.org/all/20250214104539.281846-1-quic_wenbyao@quicinc.com/
>>>>
>>>> Changes in v3:
>>>> - Replace devm_reset_control_get_exclusive with
>>>>    devm_reset_control_get_optional_exclusive when get phy_nocsr reset
>>>>    control in Patch 1/2.
>>>> - Do not ignore -EINVAL when get phy_nocsr reset control in Patch 1/2.
>>>> - Replace phy_initialized with skip_init in struct qmp_pcie in Patch 2/2.
>>>> - Add a comment to why not check qmp->skip_init in function
>>>>    qmp_pcie_power_off in Patch 2/2.
>>>> - Link to v2: https://lore.kernel.org/all/20250211094231.1813558-1-quic_wenbyao@quicinc.com/
>>>>
>>>> Changes in v2:
>>>> - Add Abel's and Manivannan's Reviewed-by tag to Patch 1/2.
>>>> - Refine commit msg of Patch 2/2.
>>>> - Link to v1: https://lore.kernel.org/all/20250121094140.4006801-1-quic_wenbyao@quicinc.com/
>>>>
>>>> Konrad Dybcio (1):
>>>>    phy: qcom: pcie: Determine has_nocsr_reset dynamically
>>>>
>>>> Qiang Yu (1):
>>>>    phy: qcom: qmp-pcie: Add PHY register retention support
>>>>
>>>>   drivers/phy/qualcomm/phy-qcom-qmp-pcie.c | 86 +++++++++++++++++-------
>>>>   1 file changed, 63 insertions(+), 23 deletions(-)
>>>>
>>>>
>>>> base-commit: bcf2acd8f64b0a5783deeeb5fd70c6163ec5acd7
>>>
>>> Hi, do you have any futher comments?
>>
>> Patches lgtm, It would be great if this was tested by someone as well...
>> Abel, Stephan, Neil can you folks test this and provide T-B
>>
> 
> I tested the previous version and it worked well on X1P40100-CRD. Will give this
> version a go and give my tag.
> 
>> I am also concerned about bootloader assumptions esp if the Qcom boot
>> chain is skipped

If any major part of this boot chain is skipped, much of the platform will
unfortunately not behave as expected by the kernel today, anyway. While I
personally enjoy hacking on such things, holding back hw support because of
theoretical issues is not going to help here, especially since the tables
can be trivially added at a later point, if ever needed, without requiring
DT changes.

> In that case, someone should add the PHY init sequence to the driver. That's why
> I wanted to have the check in place to avoid silently failing PHY
> initialization. Right now, the driver will error out if there is no init
> sequence available.

IIUC we internally settled on not sending the sequences for X1P4, since
the PHYs are initialized as expected.

Konrad

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
