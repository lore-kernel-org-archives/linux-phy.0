Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D3EE4C54ED1
	for <linux-phy@archiver.kernel.org>; Tue, 27 May 2025 13:44:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HDTi8B9CeurFJM8ahiQM01x6QjjCIN8Q7+00jQ0dXbI=; b=hYH4Pqn4biEL+X
	PqVEoNjv79EpQRLxVQMQX7pfT0vCdxrPKRrdY8LIGL8eP2e11axK/xbBUGOJnIAnEnUoiWhRCcnoS
	N5QcSLs5gciJTZ4ktLRytHBVPHhDvqWWOWmxsN4CZycnlgQvTYluTF9LpBZl+xBbyG7F6afVNM03U
	KHirTtDYFo/7cVsEFSx7Th3OVe7tlrIqutrqBhxwGFrKb2v3DxLOImP9s6hcl376ojegmO/h1JseR
	eaiN1DMmuNEQ/wyZtkLzPLDgNAncMCejBIqZrE/U3tSqfTAZGJF2tjTcDaZqNL8irhB5QjSLLd3DT
	SyF2SozCOpGbB8IblRbA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uJubX-0000000ArNu-2Hnp;
	Tue, 27 May 2025 13:44:31 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uJuUo-0000000AqKu-3eHs
	for linux-phy@lists.infradead.org;
	Tue, 27 May 2025 13:37:36 +0000
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 54RBarfi029656
	for <linux-phy@lists.infradead.org>; Tue, 27 May 2025 13:37:34 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	xLEufRgtL9qKIG4lX4CSfuKvPSGQ804jDCPgn0wAin4=; b=Hzab7NX/6BOzvYdV
	yhL7RHU3rpqw3lHO/14gTSrivQQeBRJ/vWOBd6sKeuAGCJ6p4j9fn0XNJDYz7F4j
	9SUbprGcye8/6Re9rpChZ0FdwPctvFAnbtGVcqekBAe85YyIVo0lUi3mzOqCXB4X
	pWf7SevqlglQoHZtYiH4reDWnqFg0gP67c5w6VZjRoaCWLlv1r05sSNVF93980vF
	tS8K25WlJQ6mL1Bmvic6BgJY9SatdEmPr4RY2k+RULKlpQN3dldq2Zz6l8fbQkq/
	0q5+gGUaSUgoGa/Zow+uDKH3LnRCL96MPgITd5PnsGHeWNLMFQpu3qlNcF/VatIp
	TDD0FA==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 46w6919ff0-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 27 May 2025 13:37:33 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-7ceec331273so111491885a.3
        for <linux-phy@lists.infradead.org>; Tue, 27 May 2025 06:37:33 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1748353052; x=1748957852;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=xLEufRgtL9qKIG4lX4CSfuKvPSGQ804jDCPgn0wAin4=;
        b=AadqGtai5Y25YDxeoMAfrpVPhtAjQT+5gtfmTgUucxJ22d3AyMRK6q/2S/xZa3ve29
         NkUdjLj2zFbmbjgnfX51rLVT/y0v858qfuNQqWYEL0efLTsOBRUYFuPnzEd+QTU8awtw
         QP9iPvJD0paK4USRGR1F46hfenqqY5LZ4ZZJJ4KwZCcP4R+FVdlIUB9o7PYyF5ekpGXX
         /C+5V/CY07uauraXziQWfGFbIKBoh7dqdWcyrGi8io+KumPfo5A5qBJAvFC0reDXgQtS
         vKszZVKmrbbquIa+YU/fF2hGtA96fIyEIWd8Na+khQp9fWli0lRfEqzoACzt27c9Iuvj
         jk7w==
X-Forwarded-Encrypted: i=1; AJvYcCXlPB4d8Jfwyf/1mbjYTOGSwG+VJUZONFEXyr1FcZIXqmMt8cgCVkwVZyLujvXCQGGRFy6W5nlTL2g=@lists.infradead.org
X-Gm-Message-State: AOJu0YwY1rh4ZaRw8dD38RlipLG5l28DH5FXV5Qy5+VMBYFqHB6qeESb
	GQt7tYVk1gAMmi/c9V6Jhz5VqqCT5rxVhhzJbdXXOFs8ok+QMLZjiyPU5gYhHGlLj50tj0+TQVv
	Aw+LuFbzx6A8C/HXe8u/WIA6qVlw6eWSp0B8WTpQ9sDM7flAdRA2h65bIngXT8UvvySBs
X-Gm-Gg: ASbGncuS//6dUPfKzjghyzO5vi7B2dV2nQe5GvROHIehIfWnbqInUeeg7BbTvGnLzdh
	GWA2zN80jj5nT8vyCl7rizysnjh9WN0OunvHf9snf3W0ZJSIFs0H2g9h5kp10pZdbtSdZxuC9XF
	8KuuaOSAgpprksJ173RQgE7CL7jwUW8K24iiK3CVI7G01qtcQm3255Cmfigxq9ELrXyg9H/Yibd
	asAGtUeIHLLI2rBFt8RS/MUu30gFmlJro/ONG2FBOYzl2HiVNAjtsdJnAJHXQ2/i02stezet5Ig
	XgY2KHHHniEEe+J+VUZltsUoA3X77QVDHUia0PzTMQivvBBJ8kLBg8beGPk2nIEr+w==
X-Received: by 2002:a05:620a:1a85:b0:7c5:ac06:af8 with SMTP id af79cd13be357-7ceecb968afmr708581185a.9.1748353052447;
        Tue, 27 May 2025 06:37:32 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IH6syR9I/XBh/MSLFb7D6Zw6VTBNOOLOjBK/d+fsxGEpEZQnhC1Aw9iZuvqUpC6mxmNYxr87w==
X-Received: by 2002:a05:620a:1a85:b0:7c5:ac06:af8 with SMTP id af79cd13be357-7ceecb968afmr708578585a.9.1748353051873;
        Tue, 27 May 2025 06:37:31 -0700 (PDT)
Received: from [192.168.65.90] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ad88bcd476csm126238066b.162.2025.05.27.06.37.29
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 27 May 2025 06:37:31 -0700 (PDT)
Message-ID: <e1222269-6660-47f4-85e1-3782adb685ef@oss.qualcomm.com>
Date: Tue, 27 May 2025 15:37:28 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5 3/4] arm64: dts: qcom: qcs615: enable pcie
To: Ziyue Zhang <quic_ziyuzhan@quicinc.com>, lpieralisi@kernel.org,
        kwilczynski@kernel.org, manivannan.sadhasivam@linaro.org,
        robh@kernel.org, bhelgaas@google.com, krzk+dt@kernel.org,
        neil.armstrong@linaro.org, abel.vesa@linaro.org, kw@linux.com,
        conor+dt@kernel.org, vkoul@kernel.org, kishon@kernel.org,
        andersson@kernel.org, konradybcio@kernel.org
Cc: linux-arm-msm@vger.kernel.org, linux-pci@vger.kernel.org,
        linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, quic_qianyu@quicinc.com,
        quic_krichai@quicinc.com, quic_vbadigan@quicinc.com
References: <20250527072036.3599076-1-quic_ziyuzhan@quicinc.com>
 <20250527072036.3599076-4-quic_ziyuzhan@quicinc.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250527072036.3599076-4-quic_ziyuzhan@quicinc.com>
X-Authority-Analysis: v=2.4 cv=WfoMa1hX c=1 sm=1 tr=0 ts=6835c01d cx=c_pps
 a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=dt9VzEwgFbYA:10 a=COk6AnOGAAAA:8 a=EUspDBNiAAAA:8
 a=u-Wjf5nI4b4gXCDVDnUA:9 a=QEXdDO2ut3YA:10 a=PEH46H7Ffwr30OY-TuGO:22
 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-GUID: x2sZIK9nUV3i5JD2rqI-nvEqJI4z3omW
X-Proofpoint-ORIG-GUID: x2sZIK9nUV3i5JD2rqI-nvEqJI4z3omW
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNTI3MDExMCBTYWx0ZWRfX0zFx/XhtrFTZ
 M7qu2fNxcuKAQR/Hlu6wpmX0reGOZcKsv4+g989QvnDwBXEITqIq/L6osBVQyV9/y5y6SC41Qxt
 TIdymeiYytcgnU/Bly7vD5cR9a7NVNdiTQCm7Ht7FpB9UzyEtuR01JAxxpYgeHJRnQuWlzBkEvQ
 2vsNPBsomvYWQYyUEjLbLwf8Us8k/GrlCdY9asO7BOb4XSD4pSR3L1PqQx9pmrHXsv9T0n+4Xfk
 9VNzb7cfeY7ux6KtoRv7WsHJe0Xyw7Az79clk0i1xWnbNeVeRN8n/8oeQ0Xu0W7BgJfbs7TKyrW
 owW5IfGZqJYXBcdCxSN1biKcvGW/4R1BwyJFGjGd0Sassb7uPBs5wZaoWtNwruBt5IqLrA/j4ye
 Tg1WxuS/ACmq8YaEsr8wz6nWSAHrnVRsmOSseMlIyusi+PEQhAvWWESv618ivJtcbf4MzRPw
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-05-27_06,2025-05-27_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 phishscore=0 mlxlogscore=646 priorityscore=1501 mlxscore=0
 bulkscore=0 adultscore=0 spamscore=0 suspectscore=0 malwarescore=0
 clxscore=1015 impostorscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505160000
 definitions=main-2505270110
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250527_063734_918935_920035D4 
X-CRM114-Status: UNSURE (   8.17  )
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

On 5/27/25 9:20 AM, Ziyue Zhang wrote:
> From: Krishna chaitanya chundru <quic_krichai@quicinc.com>
> 
> Add configurations in devicetree for PCIe0, including registers, clocks,
> interrupts and phy setting sequence.
> 
> Add PCIe lane equalization preset properties for 8 GT/s.
> 
> Signed-off-by: Krishna chaitanya chundru <quic_krichai@quicinc.com>
> Signed-off-by: Ziyue Zhang <quic_ziyuzhan@quicinc.com>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
