Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E3BE3CA1013
	for <linux-phy@archiver.kernel.org>; Mon,  8 Sep 2025 09:26:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=l21GtfW91d7B6ONNs27yKDCnvg6H0efyXDtgGDzMnRs=; b=YFvgdB1aBE6qai
	Ce1eh36AG9scyuuicoTNsSvub5EK2M7hFq4UlQVTFcn78xrHKGgKqZ7p+ElE+LziM8I1ezkjnCp4s
	Bn3WFgko29klODYSeouFoxEs3TjI3ZW0egV03mtgPMcQUXxwT0mxqG409+W9ZTDIZaCw8neY1fyfz
	hrtcIXhJwPc/iHOlNN5skw1mdN9+CAgwxkgAyB17cQo4/+WzLtORSqDBHXJfdGGJhJ5SbuYchFOZR
	PVaWfABqtlyo6KE6Oc1xCBau2/auJJ5ChGlqWBoCkZWtsfY/Cccq+KT/nNjMFzlujSM+8zlhYqsEo
	wVIW+uZIMI0cmErF9nwg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uvY8t-0000000G11i-2Yvw;
	Mon, 08 Sep 2025 09:26:31 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uvXGq-0000000FiYM-3MmE
	for linux-phy@lists.infradead.org;
	Mon, 08 Sep 2025 08:30:41 +0000
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5886fnfA005565
	for <linux-phy@lists.infradead.org>; Mon, 8 Sep 2025 08:30:40 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	LdQy1ux3TFO97L9j7KgRura8OaIrmueztuYraK4RdZg=; b=DcIYfEGvJkjyPGUN
	6yXK+IF3fZma6Z2PNyYwCP3RHdPQK2122r2h6WfYbvsKOtCqUZjJ5LanVcy2xZXW
	HGZTLARLbBnYaMbynExoWJykpucwLJ8rKVgpiJeI43869toRDKDCmfEB3ysNHJxG
	jRoaEmP4LOmC2E+JEkwTrI3cDLd0DsiWPSai3ujCa+yx3a3nb4HIp0hUme+V5nTd
	0eEa+zvZR+T8K3dSFxH/PwHGTu+NivZgqIZGpiT6Q/P8MfNmueOxv9v3xfskoO51
	E5tJ/Dl2HEaUE0nPzhY9NiVQ1gN5KHB8FFXROPfnn7ExXcSO5oS+LBl8bCpspgbj
	vdYBeQ==
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 491t37radq-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 08 Sep 2025 08:30:40 +0000 (GMT)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-4b5eb710c8eso7540631cf.3
        for <linux-phy@lists.infradead.org>; Mon, 08 Sep 2025 01:30:40 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757320239; x=1757925039;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=LdQy1ux3TFO97L9j7KgRura8OaIrmueztuYraK4RdZg=;
        b=TtuQDLCj7aYiyXO+SOmQ5F0b9qX3e1xDljo0tDEY80Vc3hOySXLgH6/L2j1UUt8+9l
         ToBkjbjq7Gab5PJnWfEagcrmeKmhqUzVLInGFOONj93Z8m3W1eXJbsOnFrZX1q5ZPlch
         DZB35LVraaJNXk84uXkoxuNVQfOJJ8aYMql3FzYiYP3335NnPPfjoT5ycOiyEcHFyxqC
         276a3z3Wtd8xUyCXfhSQEhqvaru8lI0ztOMH7dMU+/+L7NTLnWpZAakTYV91Wq13lkJP
         S1FYbYuNX180gYB+pmU4c8OvNtFAtMeXLuNRCGypQhY7s2hSKRFQpUyH5RjfGeUPi3nG
         SFRg==
X-Forwarded-Encrypted: i=1; AJvYcCWPYOsGi7QS73fH+O4d2M7eghk3NntSQVv8IQDtashdSoAXECbk7qB2s15/cOS1ObLjKFhzHNQqg/8=@lists.infradead.org
X-Gm-Message-State: AOJu0YxeHKOQD6ntO8ba4ENUfKV44UjCqn8ty6PPKjHN6FOt1wxqwaew
	4HzOWJrXTHx/kfoNL6OfhhSOgwUyVJDxAY4UY+BCwCHa5+DV77SVvc5afTPU37Dh+ZzkL9hxORU
	Yl+ae9EIq28gK1R2hd6hfuiNzp7jVOzQ5vepxp+vhuhUYfsT2mt+pmJKmvIp2K2nbnIxX
X-Gm-Gg: ASbGncvXLaQ+qWoaYvExwo4vKC7uWJpU4DTq7ikdVH5xrX+FukrUetomW05qfiGWQWr
	MFXdwgG8dG+yXXCrXDD3GemxgnqtuewH3LSMOULL92BtgnOXsohEhPiEvw4l9//g9PkDfFlE0Aj
	P5UFpCJctu02zZAHywym5Ax1enguHwL6lOkadLIxzn+TDIt3BWnmxlwv2B+dcqIO2aZsWrY1LEY
	Kw7Q9adR67qcZI0WFambah8u3h+LgTByP48GKmE9suCmaP6hEvEhYKKj/WFHzLf8MnV2M2gjerC
	/suanVr2xJOYgoH5vJQvY5wuFMWT4ycoDGbQshX0waVyMXEzazRBU/pZr4GRshb6kOiS1EYF/B0
	ByWFDOUrXBiOkzrJ/Q+//Ng==
X-Received: by 2002:ac8:578d:0:b0:4b5:f521:30f7 with SMTP id d75a77b69052e-4b5f8463068mr51892521cf.4.1757320238783;
        Mon, 08 Sep 2025 01:30:38 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IERSTWm/T+KcYLEj3pcPTCBa07ap2kgef8Psp3x8RFVl4n8Hlu2Zf+x4N7m35PGQLHBEUM5VA==
X-Received: by 2002:ac8:578d:0:b0:4b5:f521:30f7 with SMTP id d75a77b69052e-4b5f8463068mr51892411cf.4.1757320238295;
        Mon, 08 Sep 2025 01:30:38 -0700 (PDT)
Received: from [192.168.149.223] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b04c69545fesm388450266b.73.2025.09.08.01.30.37
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 08 Sep 2025 01:30:37 -0700 (PDT)
Message-ID: <b9678e6b-fb8d-4379-8ed6-4de19b9989f8@oss.qualcomm.com>
Date: Mon, 8 Sep 2025 10:30:36 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/4] phy: qcom: qmp: extract common PIPE clock helpers
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-kernel@vger.kernel.org
References: <20250907-qcom-dp-phy-v1-0-46634a6a980b@oss.qualcomm.com>
 <20250907-qcom-dp-phy-v1-2-46634a6a980b@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250907-qcom-dp-phy-v1-2-46634a6a980b@oss.qualcomm.com>
X-Proofpoint-ORIG-GUID: Gkuw1GTZJZFQTk-pyQXO3J_m-JbFHSM9
X-Proofpoint-GUID: Gkuw1GTZJZFQTk-pyQXO3J_m-JbFHSM9
X-Authority-Analysis: v=2.4 cv=NdLm13D4 c=1 sm=1 tr=0 ts=68be9430 cx=c_pps
 a=WeENfcodrlLV9YRTxbY/uA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=fziS89exnlNdC9XCmC0A:9
 a=QEXdDO2ut3YA:10 a=kacYvNCVWA4VmyqE58fU:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTA4MDA2NiBTYWx0ZWRfX6W7CJAHI2kp+
 rhzZhUdNBbQtrb2md9/hrYcCuGUeb+gaQiObCNwZqda/H83ZqaN7r21r2q4wy99AxlOip8NexMK
 vGTvWX7zOhK86vrMRWDyfWDyFZZ9wldHrnfZpaWxKKbEDoWBEf8D5NUlfo+hyAYKgw5mkV+Ynl9
 opdonZaFQUv3+8g5c/s6gt9BY2WukDl2iav88UpQyjJfprIETsHq5XoNSeCfREOqGkmDoFW5ZCm
 rCYO18M32qLvnIqiJKYhjofj7g9NdjrxSxrI71tnzQSLoFu9l1m9WlI8juiIdW7ZiqlaFO+ddA3
 fYTJwsjnFEwndyvENAt6RBXuA7IoY/wxPD0VOgJMyv9rNf+sh/4ZgV0vNTmpfI4LvB+25Pz0p62
 e/BpHrud
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-08_03,2025-09-08_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 bulkscore=0 adultscore=0 suspectscore=0 phishscore=0
 clxscore=1015 impostorscore=0 spamscore=0 priorityscore=1501
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509080066
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250908_013040_850061_971DCDCB 
X-CRM114-Status: UNSURE (   9.29  )
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

On 9/7/25 4:52 PM, Dmitry Baryshkov wrote:
> Extract the code common to (almost) all QMP PHY drivers, which handles
> the 125 MHz PIPE clock.

The rate is a little more in depth, but:

a) it doesn't matter because Linux currently only prints it in debugfs
b) your new wrappers can be trivially expanded which I suppose I'll do in
some follow-up when that'll be useful

Thanks!

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
