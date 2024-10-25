Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E0219D149EB
	for <linux-phy@archiver.kernel.org>; Fri, 25 Oct 2024 19:55:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LCnUMmWiW70bTBQOTkgi9+bK9+NSkCsHFeoxvH8EbAY=; b=yVzCqUfDjzHXbv
	uPSD1NS4+smTQ8A/NaJRiAeuAYPybz1Bd57TUJ+yXlVI9/5AXmBa2CU9aZaJNTl8JXp2kLE7cLTwI
	GOta3drHjjNLPVl1Fg6t5eJ15HyHAFCIGTiD6eLSNDfrxyScedXtd7g4RGfQlTP94mr392cMpwaqK
	c34UbQtekFMfoARiWsWmbBfnKeV8YfZNLlxUwU8FfEZ9Cc6cLi7ogltwgkQEJXEqw7nj9SqfgFGH2
	zv7ioSYMKxoMJko5M1x6Jhd/uuomeqJNfZj5LjAF0qxlxt2fWznFOJ7it24C4eAO+Z8Ie27oH5IvJ
	rbX82AQG1ewCYjiueGdg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t4QP8-0000000535T-2VIi;
	Fri, 25 Oct 2024 19:55:26 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t4Q5i-000000050Wm-07pk
	for linux-phy@lists.infradead.org;
	Fri, 25 Oct 2024 19:35:23 +0000
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 49PIk23C017562
	for <linux-phy@lists.infradead.org>; Fri, 25 Oct 2024 19:35:20 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	mGwB7O8RLHd/LeUThaZXaRKs2dFV0KVqPujCZ+uA/K0=; b=PHxh82nsP9TbaQ8r
	LSi8VNT3jg9o+k3BgPz2+Ujlw+aIedX1rnyr6AaGvCsUp/lL4XeYXCpj2ZqB46Ng
	fxEvxuJfWl6SjKSjV2NFua7d+uHn6Q89mAJc85H+17NG3kh4R74p3MSuBoQat0a9
	JhQltUcC8wkbnr5kIaArS/LaQFFSaLJvYXJzmY7aFK5gYnBw2ZLwJJES2WQvbJId
	bhXkY9kqVFPbP1wOEPaD3h7tzCZN0Eu7/i9yMibf6nG1j0soI4MnO5touj9FVjVR
	gB+s6ZW7KOU7dIZssZJmYwnqTnRb3omaLd6kk5WkwTb0oyJnOjSWbQlGnWsAf5IF
	eOShcQ==
Received: from mail-qv1-f72.google.com (mail-qv1-f72.google.com [209.85.219.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 42em3wj8ha-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Fri, 25 Oct 2024 19:35:20 +0000 (GMT)
Received: by mail-qv1-f72.google.com with SMTP id 6a1803df08f44-6cbf4770c18so7074626d6.2
        for <linux-phy@lists.infradead.org>; Fri, 25 Oct 2024 12:35:20 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729884920; x=1730489720;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=mGwB7O8RLHd/LeUThaZXaRKs2dFV0KVqPujCZ+uA/K0=;
        b=uve32dNDLgE2BdVTAwcgfXtU6yJSgVTrNx2ojfFgOFylaSY31LywWWBO+I8Xqtct+B
         TwWpegcjW7oVj7VcFgnxltVbIIby3XVSzI+FKJ13TmHhaSZp2ONvONy4loipPQB5lL8p
         PzV5s+Qv97n3tRUmiKy9bG49Uj6icGssXwjdiDwiyqNfBLnyMEJSPRadHR2OWIaFLeF+
         1ljd/ICZIo4KtKkT/ytPY4W7x5ruFtfwJiiqEqlaNb4hl9+EEspfWBnPxmL8e1Ud3/Ec
         N7JdjrRDuZ4xD63x3xf9Mnq+knsK7w2nL5zPTGkv55g9XKcy06PztiD1hoFdACHoSrbu
         KTOQ==
X-Forwarded-Encrypted: i=1; AJvYcCXBfhCEgbLcSvskIt2yQujSdr8XVmBwQvO47LkNZ9AiWM89JGjJzpkIKCId1iaMzzqEKMlgIAf6WRc=@lists.infradead.org
X-Gm-Message-State: AOJu0Yx64HXx59vNuBf42FpmbFC+sDDtmQe4GnwD/a1tIpp4pVqfmBWS
	hvr9gkx5FEdQ+Ve/zXdNCirElMCefes7tCQHNSvQTcf4vb645sOv+/lqp+cC3tEg33ceoxjbGp4
	Qet7C6tlOkh1XE5c5nXYBiW0lQLL9i69TJkOQUgUO30i0UhtORsyZzaNCP4oDQImERdzahWH7
X-Received: by 2002:a05:6214:268a:b0:6cb:e610:f8 with SMTP id 6a1803df08f44-6d1858894f6mr3385146d6.12.1729884919791;
        Fri, 25 Oct 2024 12:35:19 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IH/w5yswzs8jxTChYCD+bkYl6ES8YP5c43lh88NwGSKrze6+hX30nsXuDTgvfnONAQuxo3QnQ==
X-Received: by 2002:a05:6214:268a:b0:6cb:e610:f8 with SMTP id 6a1803df08f44-6d1858894f6mr3385016d6.12.1729884919430;
        Fri, 25 Oct 2024 12:35:19 -0700 (PDT)
Received: from [192.168.212.120] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a9b3a084b10sm100517166b.195.2024.10.25.12.35.16
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 25 Oct 2024 12:35:19 -0700 (PDT)
Message-ID: <e7752043-29b5-4307-9dc2-45cdf504f0be@oss.qualcomm.com>
Date: Fri, 25 Oct 2024 21:35:15 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v1 4/4] arm64: dts: qcom: qcs615-ride: Enable UFS node
To: Xin Liu <quic_liuxin@quicinc.com>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I
 <kishon@kernel.org>,
        Alim Akhtar <alim.akhtar@samsung.com>,
        Avri Altman <avri.altman@wdc.com>,
        Bart Van Assche <bvanassche@acm.org>, Andy Gross <agross@kernel.org>,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-scsi@vger.kernel.org, quic_jiegan@quicinc.com,
        quic_aiquny@quicinc.com, quic_tingweiz@quicinc.com,
        quic_sayalil@quicinc.com
References: <20241017042300.872963-1-quic_liuxin@quicinc.com>
 <20241017042300.872963-5-quic_liuxin@quicinc.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20241017042300.872963-5-quic_liuxin@quicinc.com>
X-Proofpoint-GUID: ZLKW2Ap_7E0qRKQAll-7z-zR_wl-9SNa
X-Proofpoint-ORIG-GUID: ZLKW2Ap_7E0qRKQAll-7z-zR_wl-9SNa
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-06_09,2024-09-06_01,2024-09-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 spamscore=0 malwarescore=0
 mlxscore=0 lowpriorityscore=0 phishscore=0 impostorscore=0 clxscore=1015
 priorityscore=1501 mlxlogscore=822 suspectscore=0 bulkscore=0 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.19.0-2409260000
 definitions=main-2410250150
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241025_123522_231847_74FECB7B 
X-CRM114-Status: UNSURE (   8.31  )
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

On 17.10.2024 6:23 AM, Xin Liu wrote:
> From: Sayali Lokhande <quic_sayalil@quicinc.com>	
> 	
> Enable UFS on the Qualcomm QCS615 Ride platform.
> 
> Signed-off-by: Sayali Lokhande <quic_sayalil@quicinc.com>
> Co-developed-by: Xin Liu <quic_liuxin@quicinc.com>
> Signed-off-by: Xin Liu <quic_liuxin@quicinc.com>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
