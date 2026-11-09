Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 375D0606D804
	for <linux-phy@archiver.kernel.org>; Mon,  9 Nov 2026 09:26:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=BRY+E0Se;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.a=rsa-sha256 header.s=qcppdkim1 header.b=U3c9yBTX;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.a=rsa-sha256 header.s=google header.b=dCG+cPcd
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=t+tlsZBXTVEpZXCcWsXf0cIEqm7gjU7q5FMn1TgV1i0=; b=BRY+E0Segf3MHEAx59QD4IaN+y
	naQeOBLcvuMlnSDVIOI5aA6GDh1xEt8k5C0c/loUgrK05B77nD6fYVvnARk003ND4X5+SAOYvz/TC
	0i1DEJE7abfLJd/oHS7Rxgi/76qhyBMzWTBlpndXS0l0uph7HfHdRgZnkICQUNlStM0RbMWe0IqDX
	EnOA+un1Jod7PN3RtdLSJCNh9ws8JHjO1g9IEJN3l5ozJXBqnhGijgm6NuJiKl2CSJzzggCrerrKj
	ZNlJwF0u9DlLu5vklXWrscn68xwPysFh+x1ZXtmJGPmDVSjk13gzIz10MawiTPWCqpySyrpIiBm2K
	jUZvPZOA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xQLeD-00000000G6T-41u4;
	Mon, 09 Nov 2026 09:26:41 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xQLeB-00000000G5s-1Em5
	for linux-phy@lists.infradead.org;
	Mon, 09 Nov 2026 09:26:41 +0000
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6A96A05x3298141
	for <linux-phy@lists.infradead.org>; Mon, 9 Nov 2026 09:26:37 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	CU19/uceQg+oPr853pViYrNcsskRDc482nGLsBh3btA=; b=U3c9yBTX4AZuU3Ua
	syCbEkae6OEU9JjKr7jcgceea19Mz4+tCOb5Ff3iu8u+gsXsWepkqy4EEgZcQcqE
	DyUQb4EqCJt8cw876gL1PZNwz8HrZFvoU22Wo7LKGg0l4YgRU4sPCOV/c61D3B4P
	W7lKPDrA24T2ZahBzsRQ3etV2x75ADbYLVRtbrV4glMnAmx5OadfiaH3xtpIhDvE
	S8Rf5cP8x+8JMr6pu6FpF/mwRid3FUJmuC21PSeyB4bESiAM/0xXC5GAvclzVbRX
	PXXgejkQKuvsOrHWk52C/gMym3CQnYfMzYCZuGtNMCl77cIhm0Ql7zLAK81A7jsL
	/XkRLA==
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4hsuagwr03-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 09 Nov 2026 09:26:37 +0000 (GMT)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-5356c6d98cbso2328081cf.0
        for <linux-phy@lists.infradead.org>; Mon, 09 Nov 2026 01:26:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1794216397; x=1794821197; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=CU19/uceQg+oPr853pViYrNcsskRDc482nGLsBh3btA=;
        b=dCG+cPcdaksLiLwQFN9LEv7yTzE9zVZuB7QwXPxSAERmBwnM5w0o2a4hGQBRJAqyT3
         SmgE+M1P8ng+jo7IwGkJMgB9A3vG+1mLwL7WblMsc8tZ6K9T3jF7tfV7y+fogHvvyxmV
         8Ng0UNlg4jCrATXcI5gcW0KOIzV+HetJQItRpMk4wjWnBeuiYcxzrTWYWrobyFFMWuie
         XK7gBMcIJTVJ1ac3bQ+68cyjYjft0aMw5t6UWPBGhmtbBBT8w3/bYHQW4qYhXdY5pY3Q
         OF4atOQPYtlztTVoy4MGw7SX4vWibywyJfE8JZYjVDQjdEgdKSvVMMXRFWmXE/wqcFX5
         Kbiw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1794216397; x=1794821197;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=CU19/uceQg+oPr853pViYrNcsskRDc482nGLsBh3btA=;
        b=u3IbpRMHuNo6cQjlVT9UOWZUGLJDEpUwKIHuHTGNk0JUAUjrKHq62jyZ8VyOxf53Dr
         73sMoNtCCW/Cj+gIuZXllz2A/NYXx4YMJBfzQDu9jctYEe2zXGKffrAGSwxoBLgLlDzO
         Ovgyfh8+iYeoRfkNDvxyqmfznb4r6tlxVjZZSsdzaK/XnjYsdeDkKjqJ+7/TIfyZJdLE
         8cXs0dwkPSsnknNW2m6ceaM7TSFOLSaXREJx8xgyVGNVOZT84YXIwX4HTvhrdifDsB9+
         /XJrT7ECaJGWjl2ltTRfXk57XLOx2x26QCrX2J5+Op8laGWjqlngEBK1rq1MbRucfhi8
         vNag==
X-Forwarded-Encrypted: i=1; AL+hErENwEDdpgdu8RUjw+Y4wHLow6r+eI5tXTTmBEaWOCARC7VLjTWtJ3JLSOI2muljz9eeF1MI2tmoOQo=@lists.infradead.org
X-Gm-Message-State: APuU4Z+nlPbRQz2dmBQ1qTjMSFmmmuzMQUf56FRlOd0HTobs4JK6tPRa
	iqAIUzP3Vzcq1LRNtW0fLDn2cEfRRXm4nEUkNit10kMfHf+56cVhWQU0vD37DLA4FgoVS5+XVVX
	mmFaDm0/6bphBIkCUjih+VnQ71Qpq8id6y0dsLgTfXaS2o4tY0lQyQ3LS5Bxtv6Qob5XZ
X-Gm-Gg: AYBFou0V+xn/0g7uH81wap059kg8lgQfav4BA1z0fd642BN9NVq3GVmiYJkixrhxOtx
	8JWRXGvWPA+7cqDlDFIxVtdGf1l+bKYT2b26kxFmnCZgJiQCtWmygKsMqBxDwViWmMNyBDDTuz7
	c2GgqJrw5TSoyJKjQqKAZ3i3nX8KFAOn8H8llVWRZhxZAvwu3ZVMRkM/fgHtbrTSfOq4IXmNMdF
	v1zzAW0/4+IkteY2N8TeJk634h1ATDtUqzjStw+r/jlht1xyidvnnZz8AVq+OlsSZpgSEpsaJbE
	fBKWsInGgI0fLDOJu0X9B4gw3Ee3ZRbPgJmd66o6F/1kVYj6Ex2oj2yac8c+X74v3hp0e1XsWnz
	Q181Q99x44hPnzJW5ASh7IjGT6+RFTOfa2KBmSyYwKGpgORj4iCdMEtiKz2ZV/qtBJXha1g==
X-Received: by 2002:a05:622a:5c09:b0:538:40e2:ba55 with SMTP id d75a77b69052e-5529f4260a7mr79989951cf.0.1794216396953;
        Mon, 09 Nov 2026 01:26:36 -0800 (PST)
X-Received: by 2002:a05:622a:5c09:b0:538:40e2:ba55 with SMTP id d75a77b69052e-5529f4260a7mr79989701cf.0.1794216396483;
        Mon, 09 Nov 2026 01:26:36 -0800 (PST)
Received: from [192.168.226.72] ([178.235.128.140])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-6b721ea4134sm1200061a12.9.2026.11.09.01.26.34
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 09 Nov 2026 01:26:35 -0800 (PST)
Message-ID: <90abad23-519a-44e3-b268-e010ae330286@oss.qualcomm.com>
Date: Mon, 9 Nov 2026 10:26:33 +0100
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 3/4] phy: qcom-qmp-pcie-msm8996: Do not request reset by
 index
To: Philipp Zabel <p.zabel@pengutronix.de>, Vinod Koul <vkoul@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Manivannan Sadhasivam <mani@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-kernel@vger.kernel.org
References: <20261106-reset-deindex-phy-v1-0-6a9c9f428be8@pengutronix.de>
 <20261106-reset-deindex-phy-v1-3-6a9c9f428be8@pengutronix.de>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20261106-reset-deindex-phy-v1-3-6a9c9f428be8@pengutronix.de>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMTA5MDAzNyBTYWx0ZWRfX2mdF/mJ0FMNv
 Ff1xz0koXdoZ/wSaAbUQ8llT3/THL96n+wRGqGkJTrrmd8JMmbAtm1oF4pkNUdeHEpXS5PNe2xd
 mvk/dNf+FAputItBtY2UipGTHMfRQsydj2+Xd0v0Mxh6Bww61A93FW0xBXsDwfIdTvSZao8Rkhj
 X1r2cVATcsfQ8JLAdioTUvYh17zFdDIPD6r8iv/SUzk0h2FgRysVeCos5lAkanHPs1a2qle9r5f
 m725URRnpBYggCB6mYeBd9oqU+kAsL+jkT4JypNHXsCVkji09ULegstViEx4Ahf7WMZ2+GvPyWq
 V/B2RHY/c/m2Y1EzpRdEedUeqt9XjCSnRPrdzNMILxGvUn+r7kHT/ifDVTg0tQCyUgi4UKuz+B0
 NPImvTqBBbJnRXqawKPJJGcMaarjKOPUd61V3IYnogSGhDiVVELRTeaS5VckAVtWtbyLoekzOgB
 QjEZSLtuLH+VUJDcR2Q==
X-Proofpoint-ORIG-GUID: 8bAeCKWJ4otxSjmWHks8lrzzVra1c0gD
X-Proofpoint-GUID: 8bAeCKWJ4otxSjmWHks8lrzzVra1c0gD
X-Proofpoint-Spam-Info: AW1haW4tMjYxMTA5MDAzNyBTYWx0ZWRfX1O5ZOSys10Vc
 j6Bgtz15s3Wc8gGoQ0shUBl7KA1qTAkMbsQFrg1EzvHqclO6G5+9aJWrupWiLsIDfXPMhEUKspG
 W1xhss0OKgfyUz+PuMa8hTc+68VWKPc=
X-Authority-Analysis: v=2.4 cv=V8LoQuni c=1 sm=1 tr=0 ts=6af191cd cx=c_pps
 a=WeENfcodrlLV9YRTxbY/uA==:117 a=PRfkaYvzSr8QmIIGAkY2Sg==:17
 a=IkcTkHD0fZMA:10 a=zJRp6_cAMcgA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=ZpdpYltYx_vBUK5n70dp:22
 a=EUspDBNiAAAA:8 a=Nus541BASMCDIAVa8f8A:9 a=QEXdDO2ut3YA:10
 a=kacYvNCVWA4VmyqE58fU:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.138,FMLib:17.12.100.49
 definitions=2026-11-09_03,2026-11-06_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 clxscore=1015 malwarescore=0 bulkscore=0 impostorscore=0
 phishscore=0 adultscore=0 lowpriorityscore=0 priorityscore=1501 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2611040001 definitions=main-2611090037
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261109_012639_455706_6B0238AD 
X-CRM114-Status: UNSURE (   9.22  )
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

On 11/6/26 4:01 PM, Philipp Zabel wrote:
> There is no need to request a single reset by index.
> Use of_reset_control_get_exclusive() to request the first and only
> reset.
> 
> Signed-off-by: Philipp Zabel <p.zabel@pengutronix.de>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
