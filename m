Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 756D160A2600
	for <linux-phy@archiver.kernel.org>; Fri, 30 Oct 2026 16:42:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=0A1oXElH;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=qualcomm.com header.i=@qualcomm.com header.a=rsa-sha256 header.s=qcppdkim1 header.b=GxSHJkUC;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.a=rsa-sha256 header.s=google header.b=O0BBZf7/
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:Cc:To:Subject:
	From:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=HRkOqkr8CvhZkvXJyA94mkpvDDSnvos4Due1oXbJpXQ=; b=0A1oXElHFU1ke78DmA/VbI1O8u
	pe2ljmMj2RUEST9wVlYGhSiVRRMhAOlERVqw4QJYJJP85ud5K47Rw2KuTG1bcEcyKkucDGGmpG/1h
	ovBl72lzpqIZHEEjFfA5bxpoHOGbRtzhrrrHWaqkrfXZK1xrvOBoHruE59AELfZSW9JPmlSYBidqu
	ISTZXXy1PY2mJ5iCInCb3TBBB+czpKon8XqnkMiubXfczjmuNnPkQ5PFnpoeUCI8N3sjz0ZYLkj+F
	de3NzyB5DJ63+q4et3yxkqbT+gOZRgnl4ooL827I8HGMMlmF84hDQdbVEEfdQkvydxTZ8L/gL/vy3
	HOzqqvGg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xMpgV-0000000C9g6-0FVf;
	Fri, 30 Oct 2026 16:42:31 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xMpgS-0000000C9fk-0sDg
	for linux-phy@lists.infradead.org;
	Fri, 30 Oct 2026 16:42:29 +0000
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 69UERCX23564382
	for <linux-phy@lists.infradead.org>; Fri, 30 Oct 2026 16:42:26 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	g8F21DZMe3A4V+cCXI32wwp1x22mpHQp2eEhNQy6rZg=; b=GxSHJkUC5198O8Ih
	SFnWSUT53ZoG6dH9Yayj4yDGKREpJGRnLtX7RA3nqm+mNj2g1+HV5ahmoXmZ3B3a
	7W90tx0e4RUB2V/PFsJejoe/qQxXh49tXekVD2f8n/j4QlXIyBHaZDt9UKX2Z15Q
	k09XkDyovLji2vHvW7BiAzDzTBuZtiAJIBp5EzZ/Ebri7RjlhbpfhbVQRFxHWICI
	JSHBoYz6hpmjNjFpd+yLZcsUFuSflhVaajs5+X+BPTj+Dtl+fredVi/giyAyGWZu
	2NUU2n9ydMEowgV/XhZuNPdSenzEbbLtfsqwToyBxfANnhaZNTWVjhhq4AKxUDjM
	44yTyw==
Received: from mail-oo1-f70.google.com (mail-oo1-f70.google.com [209.85.161.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4hme6qm0rf-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Fri, 30 Oct 2026 16:42:26 +0000 (GMT)
Received: by mail-oo1-f70.google.com with SMTP id 006d021491bc7-70b87b40030so1223397eaf.0
        for <linux-phy@lists.infradead.org>; Fri, 30 Oct 2026 09:42:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1793378546; x=1793983346; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:content-language
         :references:cc:to:subject:from:user-agent:mime-version:date
         :message-id:from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=g8F21DZMe3A4V+cCXI32wwp1x22mpHQp2eEhNQy6rZg=;
        b=O0BBZf7/5Rgbr28m4NM0AkruVI62ihPg9wULiLyc7LtZTxB0sPlXRTc6o9/2gD88Rq
         t0UVBMY2+C0lD7ka9W6OwXtCuBzytl/gfXDIFhTweexZ7nvvuaiiTJPF3B9DfFoMaymm
         iQ5zlW2BZUj4p0/KrWcZODdsR7pywlY2ZiKmEX/eNBRhsN+EnhOcwbvxw206CSxhtSFX
         fqA/YiKaq3DSe9OnYDzEt58tiY+dsRPY+GQaumrdYar7bJ/1BR+SPzGakNvIN8w45g1w
         IlXchCkBv9Fgfv3Z6gdejHq3xnANGUJBNEh4+HCQx3UEZWgH6h/tMVv6wdenCRkoEZXH
         o8Vw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1793378546; x=1793983346;
        h=content-transfer-encoding:content-type:in-reply-to:content-language
         :references:cc:to:subject:from:user-agent:mime-version:date
         :message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=g8F21DZMe3A4V+cCXI32wwp1x22mpHQp2eEhNQy6rZg=;
        b=Lxe/3dtjSNW38H5EWKIl5s9rN1dbQHI7psqQaJomCRWj4L2KT3xYvtcbO1cu9mknPb
         dRShfAI8l0Eh8qyM0d7MMmEjOYlHFgt9djkACixraKscVUv0HJcmRvRvhurfRkfCGpFS
         9kt64NSRkOLMADBFElmiD0jsrAGVvr7zG+uO2vgzdyPD7+C3kvLPMbeXsvCdO+2OE7R0
         YbQDJvBzC0naRcAAAIiYjPYvII2a3eks7ODn2dEWmQ+xBzq0Ex/lWdxAwh7MVHohuEo5
         dV2x6kmKjcJAM/J3LNUmov5uWokwcR5pmQmZeJ++BGP7keHR3h7NmnUJfTP0T8tCaxIh
         5SnA==
X-Gm-Message-State: AFq9FYKzBBaKkwEPaqCNrb4wk9UJa140UQ+FjTsW5ooSX8emJLoLeu4V
	yxaruzZu59vLGtM5aHJiAQ0KwiL3NI8/uGMUVqZy5qaKTNH8Rh9PxKv2ZwKkdzvcdJKn4E285mw
	upCnsTbg/wYBACu2Y4J86CKAAbI8R9lLBsPp23pnSfqhonF/Tp86DBpAVEhfHmB0v7/J/
X-Gm-Gg: AYBFou2W/wbY5zpAhfu0O7So1pZWRBUITTf9rax0n9d716rwVNvDFHnpLHXHstdc0vH
	Uj8sk6xPy/dA6p2FBaummCbASzrlZVfQJp4iNhPy29PnyTijzIKw6HNem96uGpjG2DRVJd2202v
	GIjgf3Xh0VFsOgZEw8E0JaaK3fljFuxc9DkE0T7ncsuc+rVohIAX94mYivnlzOZl/96XQpjtBqb
	Q26ylsBDNjfpStH21sDLnM/PbIK1FC2E1IlCA3dx4riaqkijiLWh8pjHaeKTlBxK440JRJlYVal
	htDkH8znE4SX2SalGb9UiGqopdERlRSWPAaeU83GgKm+SuVGZfDGCjkD/xFsYOkYJ4ZJFroBXw8
	2+CSWe2aozM8PQeLfbS8WZxYg82eItfcT7Wn3KwQ9XDCtad1Rtx4MzRWNnxaXtCvNX/Cp2Z8pah
	JP
X-Received: by 2002:a05:6820:1354:b0:6dd:a0e9:1ed8 with SMTP id 006d021491bc7-714f25315ebmr1576139eaf.57.1793378546013;
        Fri, 30 Oct 2026 09:42:26 -0700 (PDT)
X-Received: by 2002:a05:6820:1354:b0:6dd:a0e9:1ed8 with SMTP id 006d021491bc7-714f25315ebmr1576112eaf.57.1793378545592;
        Fri, 30 Oct 2026 09:42:25 -0700 (PDT)
Received: from [192.168.1.14] ([115.98.177.53])
        by smtp.gmail.com with ESMTPSA id 006d021491bc7-714f2a818b9sm2364487eaf.1.2026.10.30.09.42.15
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 30 Oct 2026 09:42:25 -0700 (PDT)
Message-ID: <d21ec697-c3ef-4bcc-a74f-128191a417a9@oss.qualcomm.com>
Date: Fri, 30 Oct 2026 22:12:13 +0530
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Nihal Kumar Gupta <nihal.gupta@oss.qualcomm.com>
Subject: Re: [PATCH v23 15/15] arm64: dts: qcom: kaanapali-mtp-camera-s5kjn5:
 Add DT overlay
To: Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>,
        Bryan O'Donoghue <bod@kernel.org>, Vinod Koul <vkoul@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
        Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
        Loic Poulain <loic.poulain@oss.qualcomm.com>,
        Mauro Carvalho Chehab <mchehab@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Abel Vesa <abelvesa@kernel.org>
Cc: linux-phy@lists.infradead.org, linux-media@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        jeyaprakash.soundrapandian@oss.qualcomm.com,
        Vijay Kumar Tumati <vijay.tumati@oss.qualcomm.com>,
        Suresh Vankadara <svankada@qti.qualcomm.com>,
        Vikram Sharma <vikram.sharma@oss.qualcomm.com>,
        rshankar@qti.qualcomm.com
References: <20261028-kaanapali-camss-v23-0-95f250b18612@oss.qualcomm.com>
 <20261028-kaanapali-camss-v23-15-95f250b18612@oss.qualcomm.com>
Content-Language: en-US
In-Reply-To: <20261028-kaanapali-camss-v23-15-95f250b18612@oss.qualcomm.com>
X-Proofpoint-GUID: ZwsCp1d-nsnyIUXwfph7rULhF9r0gbTr
X-Proofpoint-Spam-Info: AW1haW4tMjYxMDMwMDA2NiBTYWx0ZWRfX8DwhK+uz9IB3
 UYi1uoDtb+6Wo10A1cH1U630J8uKy8HmALgFPCvtHiejch1Oxz020srL9c4j38JEYLSyDiggVL6
 MgpSTLia7gDP1CpfILEXoEvztur7r98=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMDMwMDA2NiBTYWx0ZWRfXz6Yq5WwiI0Ag
 ZmWnVzbSAis0a83h2FY/8W6jHw7zbMT2gDpYc3qpu/kxtJevwcwC/j5/BG0GjYufeUySvZ45OV3
 +yHUn5P2HmqVtH5OV/d1hhtOs/BEqs1mVNnmTJoCKoSGjLYDF3RK06/dA1sDpzsSJZ97xK45Ra+
 rs/Fg1WmkxpnCGlfEliGZptXStEXuBKUUFclxvIIWm8+rL3bcQ7O1QgkRra0l6gHDuN9B36xz0k
 7C8/6VjVknL7sLXm+v2Gqc24WCyij5yKaXPDn8yYVIZHuuQBV/P4rDL369rKUNe7tKP2U5FDLNi
 905h/9dDpz2LUZi+ZGVQj8UM2eb9UWfSOsHGW6vLSLCYBCGryw6DS5vXtDnh4Mt53osaMIrHMqU
 b+lHPqN5FXfiC6RALaJOkVWBOxd4kbBE+tQtKUBPp2jlo/Glg2mGGO634rXHpk+tGeT0J/D964y
 zQDtKYffi9GdLfn1LQg==
X-Proofpoint-ORIG-GUID: ZwsCp1d-nsnyIUXwfph7rULhF9r0gbTr
X-Authority-Analysis: v=2.4 cv=TpVzFzXh c=1 sm=1 tr=0 ts=6ae4c8f2 cx=c_pps
 a=lkkFf9KBb43tY3aOjL++dA==:117 a=iaXPdgsK/hfklW56b25dCw==:17
 a=IkcTkHD0fZMA:10 a=660iZSQnnn4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=rJkE3RaqiGZ5pbrm-msn:22
 a=KKAkSRfTAAAA:8 a=EUspDBNiAAAA:8 a=WWpD2f5wiKzpAssyet0A:9 a=QEXdDO2ut3YA:10
 a=k4UEASGLJojhI9HsvVT1:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.138,FMLib:17.12.100.49
 definitions=2026-10-30_05,2026-10-21_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 lowpriorityscore=0 bulkscore=0 phishscore=0 priorityscore=1501
 impostorscore=0 adultscore=0 suspectscore=0 clxscore=1015 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2610190000 definitions=main-2610300066
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261030_094228_369076_406152FE 
X-CRM114-Status: UNSURE (   8.89  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.8 (--)
X-BeenThere: linux-phy@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Linux Phy Mailing list <linux-phy.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-phy/>
List-Post: <mailto:linux-phy@lists.infradead.org>
List-Help: <mailto:linux-phy-request@lists.infradead.org?subject=help>
List-Subscribe: <https://lists.infradead.org/mailman/listinfo/linux-phy>,
 <mailto:linux-phy-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
X-Spam-Status: No, score=-10.4 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,
	USER_AGENT_SANE_1 autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1



On 28-10-2026 20:50, Hangxiang Ma wrote:
> Enable the S5KJN5 image sensor via CCI on Kaanapali MTP board.
> 
> The Kaanapali MTP board connect S5KJN5 with QUP I2C bus by default. This
> DTBO enables S5KJN5 on CCI-0 interface connected to the CSIPHY2 in four
> lane mode on a rework camera module.
> 
> Reviewed-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
> Signed-off-by: Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>

Reviewed-by: Nihal Kumar Gupta <nihal.gupta@oss.qualcomm.com>
Tested-by: Nihal Kumar Gupta <nihal.gupta@oss.qualcomm.com>

-- 
Regards,
Nihal Kumar Gupta


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
