Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DD0DDC71135
	for <linux-phy@archiver.kernel.org>; Sat, 14 Jun 2025 20:01:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Pq4/zM8auyR0P9ViDv4dyhsGVKpViq3DZABuY85SM2o=; b=hnx8Hk02rNL8jk
	7PzTgaKuehzZCLrfSHYyNQBKG9Cse6fbFg+1iIla9iMg6KA/Remo0EDfHfnWfHwKJJ49dE5qsRWM8
	CAOWReQdEEBEVLs8Qzdofpa+fKFnJ+cC++36D8puQh+w9ilJIgJ2Xj9R1d83EHjp9MWCuOfFDqdox
	SGqz8kD9amcWD6ARvwLLuKSh9fBbPEL322/Cz0/gPFR/valrXobOuUotWFL1DrBO/TRudLIMV4fI0
	6f9U/fOBT2IWQI2tpQWfdijFI/BqkdiMQnuO/FksxLME57Ymjc69MU9REdXuEyFeDpcyBbNdKGP3I
	wnbEcCciNZdId7pXHSQw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uQX4K-00000001mvg-1j6R;
	Sat, 14 Jun 2025 20:01:36 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uQX27-00000001mpm-14Qw
	for linux-phy@lists.infradead.org;
	Sat, 14 Jun 2025 19:59:20 +0000
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 55EIhBko024032
	for <linux-phy@lists.infradead.org>; Sat, 14 Jun 2025 19:59:18 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	D9Yz9eeOEAB6gwmE/XjUJssKvHuIHZG5zhBMZH1Z5yA=; b=dAMvxHGfPG4PEBnn
	4YUTpSk+0+m8gwP+g0AVnupkSOtc8TxpsPuUpn+mQ/1K6c/Z8Mqb2PdT/Ar/I1X5
	7CLLBd0dazKzV3QNASAhB46pQ8EkeqAsM3x0+LIPrABaMJvRuoa+lbh3gXmhmLRV
	Z4O4hyUfV/+gWjdrJgDPVXse2LGUCFXv3OYynO/ECvgfdBJGa8DCK3+LvWJdtXaz
	sp/O7RIX5ZfT7E5Nvbk42m9hA1aXhGpk8q6HvfVFgY8blWLG4FcWtWz//I42GS5Q
	Iu8+eRf5QjdyzkTaUfjIhbeBLY/t8xUL5n+Y6dNeojBYbgNzyonLz8ll4Er6xMrf
	2h3oDA==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4791en8yfy-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Sat, 14 Jun 2025 19:59:18 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-7d3ba561898so69003485a.3
        for <linux-phy@lists.infradead.org>; Sat, 14 Jun 2025 12:59:18 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1749931157; x=1750535957;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=D9Yz9eeOEAB6gwmE/XjUJssKvHuIHZG5zhBMZH1Z5yA=;
        b=wTa94RePMjF2D8HcVB8f39gbXtZGMFPvt/1sbtn0V0WuiyRYRbWfqRpoNnkG66rBpZ
         cbkfeeY1QVnAQKabMU3eOjO0B5aRaiXUXv5R+aFfDfuiyMGuljee4OFXMXs7+u9hb5DV
         hHS+raOxzR19cGT6LvetCFc0hx1usXdwpMpz2N2jIHE+aWSZbmJ+Q8d9iSm1PlXWXNTl
         h66BTmQJzF0FiUuybdQT60Do8/v34+aTD2MqwfQSb267A9Q1S00+XjDPwB7+tuhAkpwg
         aQIfbn9q64Xb6IPpUVxJjmT6/ID/Gaf6abDfeSAIqnrrZwQhTAipvw9w7e7TlzeIakm5
         lJFQ==
X-Forwarded-Encrypted: i=1; AJvYcCW8aTeO+mEMmoRAazPFwZJM2EjSEpQyYME9T9ENiz/OPGRNrD96Ho8hu5v2lHQl6lC+pFJR2HvZeCg=@lists.infradead.org
X-Gm-Message-State: AOJu0Yy+ctmSLZ+xMI7D5Km+MUy8NGjA8Ca/+Xk/vxYqyYLfSt1HIuIg
	XnHQvnXqse/fOnK91WmBKGeuL+N03XaXB148L+gsHDGObzm2ol5CtZELfOKSuM2vYkEvLNcgfMs
	srM7SROQ/S4OHtbIlyEd8yNtT/qhFB2llyGoPi2738ZNx9aIAI41tFcvuNTBLi/bW03IJ
X-Gm-Gg: ASbGncvg/+Mbwg8LYvkAmAmIWVNIDCQXPMH+bXyWB+eEsqt+MfjHz6iLjvOVqzz/785
	kA/0porpfxhDSixuJo5suA8IQbRvc3E71eytna8/7arSwmOvpR2N4Li+fGJqWlFrrcjLMz2gEQA
	CR/DFuWIFkornWlF2Bl1TC1eAqQF2AH7rgzqT+bZJW0nLYkHnLP8eWl7i2KR+itdQRziWoS1upp
	5hVfNmucWoUKOgEIUiyKjpYLAqkm7KapTt5DKjSgpAZZlSwm1UoWqa/mfu7PFz6WTnshkyfu9TE
	mwZxywJLejMWjApSlLPgg7Tuft6sMx6c7QSl/2bhcpkRUDJuga/Lmqo+5iYZyOkhjzxek3j99Hq
	6fdA=
X-Received: by 2002:a05:6214:1d25:b0:6fa:fcb0:b899 with SMTP id 6a1803df08f44-6fb4779b7edmr21624246d6.4.1749931157282;
        Sat, 14 Jun 2025 12:59:17 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFyfvXu2z/Eu8GxiF3dbJxs97S6hPTXH957lzGZe6VLmsR4eBt3mhoTtVoO+YoinFTILZFt4Q==
X-Received: by 2002:a05:6214:1d25:b0:6fa:fcb0:b899 with SMTP id 6a1803df08f44-6fb4779b7edmr21624086d6.4.1749931156870;
        Sat, 14 Jun 2025 12:59:16 -0700 (PDT)
Received: from [192.168.143.225] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-adec8158d33sm356206366b.31.2025.06.14.12.59.14
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 14 Jun 2025 12:59:16 -0700 (PDT)
Message-ID: <296a9ab8-04e3-4623-8246-c8fd3fca8d98@oss.qualcomm.com>
Date: Sat, 14 Jun 2025 21:59:13 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 5/5] phy: qcom: qmp-pcie: add x1e80100 qref supplies
To: Johan Hovold <johan@kernel.org>, Wenbin Yao <quic_wenbyao@quicinc.com>
Cc: catalin.marinas@arm.com, will@kernel.org,
        linux-arm-kernel@lists.infradead.org, andersson@kernel.org,
        konradybcio@kernel.org, robh@kernel.org, krzk+dt@kernel.org,
        conor+dt@kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        vkoul@kernel.org, kishon@kernel.org, sfr@canb.auug.org.au,
        linux-phy@lists.infradead.org, krishna.chundru@oss.qualcomm.com,
        quic_vbadigan@quicinc.com, quic_mrana@quicinc.com,
        quic_cang@quicinc.com, qiang.yu@oss.qualcomm.com,
        Johan Hovold <johan+linaro@kernel.org>,
        Abel Vesa <abel.vesa@linaro.org>
References: <20250604080237.494014-1-quic_wenbyao@quicinc.com>
 <20250604080237.494014-6-quic_wenbyao@quicinc.com>
 <aEBh2xHu3QDtUrxe@hovoldconsulting.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <aEBh2xHu3QDtUrxe@hovoldconsulting.com>
X-Proofpoint-ORIG-GUID: ZEzG-0tYYg5Vlj0_p_oFpFgMeZO_iuEq
X-Authority-Analysis: v=2.4 cv=D6RHKuRj c=1 sm=1 tr=0 ts=684dd496 cx=c_pps
 a=HLyN3IcIa5EE8TELMZ618Q==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=6IFa9wvqVegA:10 a=VwQbUJbxAAAA:8 a=zitRP-D0AAAA:8
 a=EUspDBNiAAAA:8 a=6rhPmxELWQzppWOSQc8A:9 a=QEXdDO2ut3YA:10
 a=bTQJ7kPSJx9SKPbeHEYW:22 a=xwnAI6pc5liRhupp6brZ:22
X-Proofpoint-GUID: ZEzG-0tYYg5Vlj0_p_oFpFgMeZO_iuEq
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNjE0MDE2NiBTYWx0ZWRfX7Z9lL3py2Nce
 DnQ+pOKxuRzUXqO7qGSljd5Tqk249VDh9igaFi4yVFBI3rHnwSahPou3e4jT6NEGRcdy4j5bUcF
 ve59tRkCGhjP8QNf6dEtAmYq1qXu6kURq1BYq+Lsk9t9v+vKOaxj5iEVGcgXikmVf3LtFNuMdAo
 9r95byJzw2ZiQVEu8cYz3Jcl5XSLHS3BBgU48XMNa06ZzaXdxNj0e0U1QkdzB/pboGNYhM2kegh
 io6JBQwJwltDtwgcv3A4UNSLh9wePv+9g5I8asJPSXu1WNKKwou5pwK9rl2taTuNvAyvrJ2Mdd6
 rmHkBW4+pKJ+Ef3KR7ujItmN5VziqAVCnaJ0/jcVGYikfn47KHWbXjhL1R+t4Y6Z8vX7P0xwiZy
 Xv73vRo48Jed2i5PfxV0ONPn3qH3x7qKnH1foxhaX8nZMbxKZVw4mp3W8Xf+4muEg2MORUvi
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-06-14_08,2025-06-13_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 malwarescore=0 impostorscore=0 phishscore=0 adultscore=0
 suspectscore=0 mlxlogscore=999 clxscore=1015 mlxscore=0 lowpriorityscore=0
 spamscore=0 bulkscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505280000
 definitions=main-2506140166
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250614_125919_419572_D4EC37E4 
X-CRM114-Status: GOOD (  20.00  )
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

On 6/4/25 5:10 PM, Johan Hovold wrote:
> On Wed, Jun 04, 2025 at 04:02:37PM +0800, Wenbin Yao wrote:
>> From: Qiang Yu <qiang.yu@oss.qualcomm.com>
>>
>> All PCIe PHYs on the X1E80100 SOC require the vdda-qref, which feeds QREF
>> clocks provided by the TCSR device.
> 
> As I just mentioned in the thread where this is still being discussed:
> 
> 	https://lore.kernel.org/all/aEBfV2M-ZqDF7aRz@hovoldconsulting.com
> 
> you need to provide a lot more detail on why you think modelling these
> supplies as PHY supplies (which they are not) is the right thing to do.
> 
> Also please answer the question I've asked three times now on how the
> QREF supplies map to PHY supplies on X1E as no one will be able to use
> this binding unless this is documented somewhere (and similar for other
> SoCs).
> 
> The fact that you so far have not been able to provide an answer
> seems to suggest that these supplies need to be managed by the TCSR
> clock driver which can handle the mapping.

To emphasize, we apparently can't do it, because there exist IPs
where the QREF *ref clock* is not expressed through a bit in TCSR
(which we interpret as TCSR_CC), but the *supply* for that clock must
still be described somehow, as it obviously needs power.

To add to the mess, it may be that there is more than one supply
per reference clock required (which is not necessarily an issue
when the driver takes care of it, but something to keep in mind).

Konrad

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
