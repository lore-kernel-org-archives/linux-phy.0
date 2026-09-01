Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9F4C1C61DD3
	for <linux-phy@archiver.kernel.org>; Tue,  1 Sep 2026 13:23:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/NYbqbUz9P/wlkf38ccj1NOXjYwStThXqDM8qlCn/Cw=; b=aApT4hLcL7MIxP
	CKZso1dkFApT5rczKwrZgAxUyXBBif2JjPklFTid0pw7l0w3IrskrOqj2qADqixVxByF6DAJht9XE
	Cf87/+zzIIJkqPQwJ9qEf2Om1s6lwCgZzj3zQHlfYrL4R+N4d/3PZL9wGYvVT2UUyTwQenUXf/cNv
	EGP67cqYD02E1kh6+pYHvnCz1bRrYZBEhPCNzCnH1D1hl9bGVXuAOQhyyVCzOL1731V2xJYk8vFE9
	vWmWwrfFSn9X/pKh/X7SXX7yBF1Cv7gsz9ZGpRPYh/IKfiy58T87Qt9lXUglk50tnsZTTgugrxOzb
	goW2ORYZG5ASpbrCEVvw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x1OSw-0000000CDAq-3jBb;
	Tue, 01 Sep 2026 13:23:54 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x1OSu-0000000CDAN-2bdJ
	for linux-phy@lists.infradead.org;
	Tue, 01 Sep 2026 13:23:53 +0000
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 681AJOi33407069
	for <linux-phy@lists.infradead.org>; Tue, 1 Sep 2026 13:23:52 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	jthUaD5iRZHV9aBRZjn0IKRLvA9r9dfDxMnS52XP7eE=; b=pwbujzHo38NpZi+u
	CgVm7RlOuN7Be2fu/SOtvOkNkhJgx4/Z4yRCLHUPMOWvsdzd22dufX7J9oQbXR0Y
	Et09LjfdF3+JO1rBXFwEhV0nn6e7pfvx2gDneCM7T725KwgYRL76OeuoT1fRZhtC
	gq9NrzknbjMGfQoLiPhw7WgkCRaA7Z8DMUs7YokxKEEyPeiC9vP6tTWme8mnt4NK
	YMxMEkedst5OiJvMWHyBjnuNQd/vJ57xMQdzdTilGU/l1Nxlxxu35UmGNQ6i5nX+
	o0bM+TorUwAGnSdjQhDns04jZaK4y7zOEPnihkkZAjvTlguhcVVUFFNT8s7Zb8sW
	moWCDw==
Received: from mail-ua1-f69.google.com (mail-ua1-f69.google.com [209.85.222.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4gdsnu1qxq-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 01 Sep 2026 13:23:52 +0000 (GMT)
Received: by mail-ua1-f69.google.com with SMTP id a1e0cc1a2514c-97cc3dee8aeso37047241.1
        for <linux-phy@lists.infradead.org>; Tue, 01 Sep 2026 06:23:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1788269031; x=1788873831; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=jthUaD5iRZHV9aBRZjn0IKRLvA9r9dfDxMnS52XP7eE=;
        b=SAY6/7BKnPeeyXijOYKvaM4W1JeCMC8xLmec8yp/lb83xsk0okD3SiYIFd4UWA89on
         EMmrcD3W2IXwxv68uSX8TwMUF5sqt/+er2QUuU2svspT5nVd5qDWDfwrHXzr4n7+Jxo6
         j/AheyUydJ9S9BZJFmgfVJlVa2qznbdOawZIQ5i3Qy76qGIHgL25UBrgNnppqd+nUgyI
         jbXnzsDi6HJlrbl2z9og06FG9CMpYsLa7w6TPPAeEAZUNPo28rdBGMvohY2zfwWUeLe/
         VbVJgT/MF8jHc3H7Kr/TK/yBLcRffXjxXv9an9pKIm3KJqz2reDS8RW9SWQkSnzFZ91A
         rwhA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1788269031; x=1788873831;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=jthUaD5iRZHV9aBRZjn0IKRLvA9r9dfDxMnS52XP7eE=;
        b=hufPdgmBc1Q/Y/l2jJhhVdAoy7ZwYezbYVM+wxxW39g9uYe8hMafwztNapN9JSI1hZ
         5l4RH64msp+A+bg8GZJUN/RE4wK8FXPTFXuSGICy9iVOfR1GDobvhA3IIct1f4Ix2vm6
         NjXJRCcllYyYBRgiQg9NihR1RH57EXIqqcvxVS9Gha273nwxyD389igvpOWKMzRjTQdx
         etvr67i7qzeG25+SInyWZHDcbLaq4NlgafySWznjpX2oDf8qY3QI8Sa2m4uLJASwA5Qt
         nOWo2zx9W3eW1NXxop51Ukyw66TSk1k2b56UWFvH4crUCFIOR5vyIwTWTFcj4B/jdJYJ
         Hchg==
X-Forwarded-Encrypted: i=1; AHgh+RpfIz6U9L9GJev5tdg2OjGBdDdKUSKU65aXqeN6LQsCxdKV6qRTK9HjBUD9LK/XnUFEP4NDPVoqaiE=@lists.infradead.org
X-Gm-Message-State: AFuF++l40g2VDIWzdumaq2f65Y8AbGdfSYEauQlZY4w3vsrlJkgykVLw
	C/7mIc2BqB4QD1n/VYjVcKWqY+n2xppD3snsIuMrVfDXe6Ao8MW/gotw6OXEqPqpheNLFf9MNv7
	Qs6lwXS+N2lomuez7XzgyDYo43Ws1ksBMZaoHyVEFOKo24c+G7fjIvf8we5eXz/jllJFD
X-Gm-Gg: AR+sD10CkbdDs6oZqK9TPlmLlcBLRrnDGd+L6p/6j/WYrQ97XDSF0alZjDxnK2ZLzZW
	G8DxatELc+FG9wHEc31MzPo9BNVhYv3QCky8pOQjhorFQ7pSQcrf9+pdX8YhUVDIO3J9ONQEre3
	ZNatvS+ZCmOoGihu8WxUubuyX52trZxHoHGH+Pw6Te22qXlHTxZ8wdsRE1mE/3i110/Nqt0JJW5
	yyaPGu9a5y+qOLaCAnBG5ezMrS0oshFcUsjdnqfkWlbtjgDBVux69WG/OcrJGGvBviqCWtBFJYE
	WDN7rUSCgZui1/6iPMGQDYyyoHgPqaY5G0FlfhDucXVI1HWVtAATIItahKQR3EiT/kvVEsAjD9J
	xc2GXvu3ReBUQ46+2/fjUew==
X-Received: by 2002:a05:6102:508c:b0:789:3ef2:1da1 with SMTP id ada2fe7eead31-7893f0161a4mr2830672137.1.1788269031155;
        Tue, 01 Sep 2026 06:23:51 -0700 (PDT)
X-Received: by 2002:a05:6102:508c:b0:789:3ef2:1da1 with SMTP id ada2fe7eead31-7893f0161a4mr2830640137.1.1788269030644;
        Tue, 01 Sep 2026 06:23:50 -0700 (PDT)
Received: from [192.168.202.12] ([178.235.128.140])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5b5e89ce877sm2884326e87.20.2026.09.01.06.23.47
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 01 Sep 2026 06:23:49 -0700 (PDT)
Message-ID: <28b27377-4fa9-4aa9-9f3b-d7dfecdc21c9@oss.qualcomm.com>
Date: Tue, 1 Sep 2026 15:23:46 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 11/12] arm64: dts: qcom: ipq5018: Add Super-Speed
 UNIPHY to USB node
To: george.moussalem@outlook.com, Vinod Koul <vkoul@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Praveenkumar I <praveenkumar.i@oss.qualcomm.com>,
        Philipp Zabel <p.zabel@pengutronix.de>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Varadarajan Narayanan <varadarajan.narayanan@oss.qualcomm.com>,
        Nitheesh Sekar <quic_nsekar@quicinc.com>,
        Wesley Cheng <quic_wcheng@quicinc.com>,
        Manivannan Sadhasivam <mani@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-usb@vger.kernel.org
References: <20260825-ipq5018-usb3-v3-0-39be0955a6aa@outlook.com>
 <20260825-ipq5018-usb3-v3-11-39be0955a6aa@outlook.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260825-ipq5018-usb3-v3-11-39be0955a6aa@outlook.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwOTAxMDExNyBTYWx0ZWRfX+VF43yPOF9kv
 vyej16q66N54hJv3i34+PU8yPz81hlvJE7VHxL1uJJ2Ex/ZzVOq4FwwSwkPbPSEXOfttLo5KsjH
 Bp5+fzZ1YQC+g8A3h6PjKC4rscK69ggYCLwIjwh0HArbXNRrXPC0vyjU8koMPfbNpdQaiz8qslG
 aXJC5GYJOimbt8fOxFJSJojF6WqOV2L3N9WVu1VW+YgXFnX+3xDBzV3MIYSJtogLCD67J6LCX9a
 h5bJfEbi3/KA3/yegxa7hygOIKl5f1/CSkEOs6sLTsz6R3C2khBBLFldnDZM70STXimdMDzSK64
 NhTvMHh3lfyiWHm5PeoRXNDOYwFzjIRku7BfQFq7WdViQtKVHLv8kDmi17Ag8hJ5UTtqIpTt6dk
 5RCsuJ943D/ivWsJZngx/FEklDKzigx4dcOYgI6ERYPWMSgohIkTxK0DAr43xH6achBlGBf1reH
 j7lnFbTKrDx9NR89X9A==
X-Authority-Analysis: v=2.4 cv=L6ItheT8 c=1 sm=1 tr=0 ts=6a96d1e8 cx=c_pps
 a=UbhLPJ621ZpgOD2l3yZY1w==:117 a=PRfkaYvzSr8QmIIGAkY2Sg==:17
 a=IkcTkHD0fZMA:10 a=VdqzKS8jKosA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=eoimf2acIAo5FJnRuUoq:22
 a=UqCG9HQmAAAA:8 a=EUspDBNiAAAA:8 a=WWQFUNGd85j635JlVwcA:9 a=QEXdDO2ut3YA:10
 a=TOPH6uDL9cOC6tEoww4z:22
X-Proofpoint-Spam-Info: AW1haW4tMjYwOTAxMDExNyBTYWx0ZWRfXymXSJVnNa+yy
 i2t0wTeaNCcGlDNR/mMhtRiKCz98ex5W3PmpREXvHkaWVCPjgzt8bbz4ZZ71ZJjGlG+eYS08wv1
 srIAiAWyo69XuWSBoKbNZpR9ejoQ4BU=
X-Proofpoint-ORIG-GUID: 2GB_JZWL2n3HOJ7xETE7DLSldvaOMFaK
X-Proofpoint-GUID: 2GB_JZWL2n3HOJ7xETE7DLSldvaOMFaK
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-09-01_03,2026-08-31_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 spamscore=0 phishscore=0 suspectscore=0 priorityscore=1501
 lowpriorityscore=0 impostorscore=0 malwarescore=0 bulkscore=0 adultscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2606150000 definitions=main-2609010117
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260901_062352_674556_163A2C14 
X-CRM114-Status: GOOD (  10.92  )
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

On 8/25/26 2:37 PM, George Moussalem via B4 Relay wrote:
> From: George Moussalem <george.moussalem@outlook.com>
> 
> Add the USB3 UNIPHY to the USB controller node for USB3 support.
> In addition, switch to the pipe clock supplied by the USB3 UNIPHY
> instead of the UTMI clock.
> 
> Signed-off-by: George Moussalem <george.moussalem@outlook.com>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
