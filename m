Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7DBB3C43458
	for <linux-phy@archiver.kernel.org>; Tue, 30 Jun 2026 13:57:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=D5kDbIGNeqhsCmHLSDZAWVWvzqwRV5CnKAhFcVEZOgQ=; b=5EmUceFCrj87on
	+RTTvZMwf2Jl1Z/h3l5W4JMTGZWw8FV6rfNS+cdvj6tqWQHY/rbZ0kbq5qPol2FYO6G/AkCbbpp8I
	cO3/57BxxMkR9qQBtI1cpQR1+aaYnpn6s1RSKfuqd/+ac8V4dtyj/xokI+WCmsZBC0O7PvTBQBFDZ
	FSdT8rpymJ82UKlG/ct27rHlfwD/uXDfhg0/T4A6iiMl8fc4BDTCxS17tkQ1d6tMD/CDAGjCnXRJt
	oYICzaJXCCtq4EKkR+amQ67Ft5cIl+CDDvP3R9TCUoAAMbaUt3TA3LTwY3POhxvjts3q3WEk6U2WB
	17cmKDeI1hyFxmi7GEBQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1weYxc-0000000HEAQ-13nj;
	Tue, 30 Jun 2026 13:57:12 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1weYxY-0000000HE99-40K6
	for linux-phy@lists.infradead.org;
	Tue, 30 Jun 2026 13:57:11 +0000
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 65U9mruq1542077
	for <linux-phy@lists.infradead.org>; Tue, 30 Jun 2026 13:57:08 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	5xGf3q1sMxp7hVytKtAfTiomXRp8edhMsYCsyjla46c=; b=NJFmWDeDxxzpzIQr
	JZzizpdOC7LqG5EH9JFXsTxreNVt7jo3OIMI1OZHLMeg8/dCwv048IMAMygxVOyd
	nOU9sWQwFQtTHnoeTU1qgkn4y86o87eiPmSFY1h7XeSY8PCv/U5xdPi6QA7epDH3
	UBWdWJQDcraiRDd5j8h1fgTuv/1TMZ0bWPmDVojKkBoeC3c6A+xYGq0J3KYc8xsn
	pDSbpBeRiFm9v+5y6nfjgzJ9I3LAraawRoyWGaZGmpnuVvyJ46qIkwO5wmhQx/6T
	zi41Lmp+esNCxEwXhQKQA9ByEa67bCo9OonnvvXq+DpCpfsXyls6CTcnoEcAoG8N
	uCVkNg==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4f44v4jsr3-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 30 Jun 2026 13:57:08 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-92e6b97afe7so12452585a.2
        for <linux-phy@lists.infradead.org>; Tue, 30 Jun 2026 06:57:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1782827827; x=1783432627; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=5xGf3q1sMxp7hVytKtAfTiomXRp8edhMsYCsyjla46c=;
        b=awqDNcyqHQd82osIkwgqwr5lsFQzjS6ITnzMZ6DSBi+b0LOckY8OjcZZUrheRdzO8r
         Scip3y2l4fpktKE1JyoRfo7BtfNB/s3XBmmO/OVoBZLNPTsNN5uzDyYhRJQ/jJJXoj7g
         r3OIq68ZPytvgzv49iiWoOfPKoB3mNv4FRlSWpAV3uV621f71BG4yKU5UmikAN+xsGn9
         n6adNcYLXOZjNd0vXQ8CtXYxbaxCh51zahbZwrK1GimbfPXFSwmY00KdwTe4jT2WIYjk
         8TYxmTxrqPYkym+rWo3U9HoCQc/7NdZS5L49ViKOhana/UTvo8k8kmn+spDe/cXeXNMG
         NGvg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1782827827; x=1783432627;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=5xGf3q1sMxp7hVytKtAfTiomXRp8edhMsYCsyjla46c=;
        b=mY2uGj4WAO00FWegxglzgep4pTq73ZbbmRE69VIEWZPOzVg18qovL3r87/XbpYWKUf
         bdNWbAyOlmKMvm1mkowOmv8SWaAQvjC5XlFlvPp+M//G0Ga7HIrmbu7QxFPZeBfeK6yy
         9SLN3kQ8kfbQrRV7vzsFMwzhhC/H0ZGE/N2PJxpe4SL9WtAR48YjYS0lerFj6nn3opb7
         K7UGv21clhB5f3shVqIaq4H+y+3Kr3aH9GNqsumhhbdrSDIxo+XLsrN6g/pvaoILT7dv
         IEephdwfX2usVoZJ4Dxn9sv3uZgno30375hMTekJIlDnPZ+et0pw4RrWhHrDx3FFez4a
         eukA==
X-Forwarded-Encrypted: i=1; AFNElJ/eHAj4kXo2Teg6Pa5jSkoH7SxSIrqjvw98LTOmDRQrliSH9an8WisxG9DShZ7CRVO5Ve9QLC/DO5M=@lists.infradead.org
X-Gm-Message-State: AOJu0Yw98GpceqmEeadLw9oxJX3o8ZTtZhc2pJ8gDBKI2fpu/JfdfPr+
	Ak2ACPNKYsCmInYPrrEVxSFIFQ0hdboMAlh/zdSegFBmjVQkrTBMOVt9IeHX9671yFyPFR9WrMb
	nOKrW42atm+WgUWZCj6ji9x+CQ4ZUMoYEJvFldM7o1lZauTgu+zLG4KQmm0xdvHHqYc8x
X-Gm-Gg: AfdE7cmWsrUsHFcuSEnuz6Uh4C5N/bzN2xxmTZeF+SXuMJUXMTb9xJDX0IfqRNKWI2x
	juP5Eybm15ah0sxAVDqZRr4QGNnOHHhyHRMViAu1Pez1aS0JjDdCXSLQkfm7+73tfLQDu2OltsP
	D3034HfQ2cFxQpoPzjVqvnsdrriPJvSB4gufrHyL8JjsxDlvc0/ihPyTxeyDaM0fkSQsO2Y74uN
	LIVV+Cl02pyvP6mX2vilSAswzdH9rQdrztdnnSI4H3WZxSeK3p77GX29pb4d259hH5C/HWAfcLd
	sMAZuEXzlNI/1BzYcj+2uUXVDRiTv3V/VabuJ9QAqw6fksXslCAQreMoXTgoPQYGfjR8qTwOTUc
	XQ55vZxWlohzzvrAMhERI3/k0U62Njbemaao=
X-Received: by 2002:a05:620a:4710:b0:92c:b769:ad1f with SMTP id af79cd13be357-92e62adf8d9mr360894985a.6.1782827827021;
        Tue, 30 Jun 2026 06:57:07 -0700 (PDT)
X-Received: by 2002:a05:620a:4710:b0:92c:b769:ad1f with SMTP id af79cd13be357-92e62adf8d9mr360892385a.6.1782827826465;
        Tue, 30 Jun 2026 06:57:06 -0700 (PDT)
Received: from [192.168.120.170] ([178.235.128.140])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-c1288b082e7sm133823666b.0.2026.06.30.06.57.03
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 30 Jun 2026 06:57:05 -0700 (PDT)
Message-ID: <53a2a17d-8400-42fe-bac2-6af997b5ebf5@oss.qualcomm.com>
Date: Tue, 30 Jun 2026 15:57:02 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v6 3/5] arm64: dts: qcom: Add Shikra CQ2390M SoM platform
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
        linux-mmc@vger.kernel.org, monish.chunara@oss.qualcomm.com,
        Rakesh Kota <rakesh.kota@oss.qualcomm.com>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
References: <20260612-shikra-dt-v6-0-6b6cb58db477@oss.qualcomm.com>
 <20260612-shikra-dt-v6-3-6b6cb58db477@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260612-shikra-dt-v6-3-6b6cb58db477@oss.qualcomm.com>
X-Proofpoint-GUID: JraVuuCyQ4RQYQTlJRKSJ_s4hse0GlsN
X-Proofpoint-Spam-Info: AW1haW4tMjYwNjMwMDEzMCBTYWx0ZWRfX+lPhRj8ooJ/k
 Y4V3uS7JDmbE1UtU0Y1VZmVrjYTqdCUON7gd5LxJpnOWTwcIwIHc7RL1sWK8rZcc9dfFDgBNUsV
 cu2KIhBrkxxC/XoJO70tTwAaXfvlB1g=
X-Authority-Analysis: v=2.4 cv=JI0LdcKb c=1 sm=1 tr=0 ts=6a43cb34 cx=c_pps
 a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=PRfkaYvzSr8QmIIGAkY2Sg==:17
 a=IkcTkHD0fZMA:10 a=FelO9ux0wxsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=_K5XuSEh1TEqbUxoQ0s3:22
 a=EUspDBNiAAAA:8 a=djcwQD5uGQ3GNs8by1sA:9 a=QEXdDO2ut3YA:10
 a=PEH46H7Ffwr30OY-TuGO:22
X-Proofpoint-ORIG-GUID: JraVuuCyQ4RQYQTlJRKSJ_s4hse0GlsN
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNjMwMDEzMCBTYWx0ZWRfX+C7ucn7K60JF
 XLxlab01FTaIyRIMnG6ViQedr/i3vL4XH0U02Tgs8twVTkFu+stRQJRUjZvBm9QKdMYYKxgaVOn
 trXq9arCBrKZRoai1faXlb6GrSEhmIU1bnXH0qJzf8di4qJmm+8HuQRPwlZDgNgn9JO2qSc5XFB
 tHbxGs60MSqjofsfzZe8Dk+cukgioh4T1+vJT4sQ1yfIlSJ4abU1Q2rD/ulmIEpEUyRYw7//Ep9
 o1hUVcK5nW/QSK9S98oaI3BSsRIcbS7Co4TH4qExMpaqNhE54RKI2zwGYCfIwKW/9e0E3+YGBRY
 ljQUUDDSTq66kgU1QDemUX8nOxK9DChlEWOduJQLQhFMCZCcaM7uJNwzhRhsQbNCZwcEfWN+ZD4
 JzcmLgErLmv54uxj5eeEWFrusk1Rk+Ub5duCj7fxSTsYz9h4JzdOhU6j09nmDWgPrfO4BrkpeIR
 JhUpf8rVBuL9Gu1dpNw==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.125,FMLib:17.12.100.49
 definitions=2026-06-30_03,2026-06-26_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 clxscore=1015 impostorscore=0 lowpriorityscore=0
 spamscore=0 bulkscore=0 suspectscore=0 malwarescore=0 phishscore=0
 adultscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2606150000
 definitions=main-2606300130
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260630_065710_060895_44E68818 
X-CRM114-Status: GOOD (  11.09  )
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

On 6/12/26 7:27 PM, Komal Bajaj wrote:
> Add device tree include for the CQ2390M variant of the Shikra
> System-on-Module, a compact compute module integrating the Shikra SoC
> and PMIC for IoT applications, designed to mount on carrier boards.
> 
>   - shikra-cqm-som.dtsi: Retail SoM with modem (PM4125 and PM8005 PMIC)
> 
> The DTSI includes the common shikra.dtsi, adds PM4125 and PM8005 PMIC
> peripheral definitions specific to this variant. Since PM8005 regulators
> are controlled by rpmpd, so disabling the pm8005 regulators.
> 
> Co-developed-by: Rakesh Kota <rakesh.kota@oss.qualcomm.com>
> Signed-off-by: Rakesh Kota <rakesh.kota@oss.qualcomm.com>
> Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
> Signed-off-by: Komal Bajaj <komal.bajaj@oss.qualcomm.com>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
