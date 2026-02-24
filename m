Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id ED814EFB7F9
	for <linux-phy@archiver.kernel.org>; Tue, 24 Feb 2026 07:47:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QcfFi1llheY/UbqXWfofeg9S0xf2t8dXl0Q+3lJ5lUE=; b=sD6UPWkkKdPLmC
	jnahvIbUS7Eg5ew3PD6Ur7NoM6rE6g8oYDeLAisLhuerTSKkZWl5gHKNF0pAUga4nCaRVlet7Bxf0
	/5kzZCdOg284elTL62NY5t2csVEEL0MEX59MRk9zEpmaT1xDakugbaNCfBLEWcni4eP9GST5YgwSr
	8kyie982NEwxPl+bgdVS4eMB+rY/mR8mj1ov+eP9nkj9pIoo7fJrQgZqbfXFSufBYPf8LceH8gHD9
	LtyeNagkJ24ifNi7kP8aVD5giWngBe/iDuW+gVKJuKX44j6vKDXK4JFkmC55CNwlA6mX5+Vslh0sS
	LVnVXxjiXGQto/oXG1bw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vun8z-00000001b71-1FTj;
	Tue, 24 Feb 2026 07:47:45 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vun8x-00000001b5z-2d3G
	for linux-phy@lists.infradead.org;
	Tue, 24 Feb 2026 07:47:44 +0000
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61O4LgKK2808517
	for <linux-phy@lists.infradead.org>; Tue, 24 Feb 2026 07:47:42 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=/Nkk8MNVa9p4aBb4Bn0e8YFq
	a4T1gMfbm9SGZ2SOdBg=; b=NceJLbXFFswAoCLY4fsBziPCIjA94G8N/Mu483ej
	SSFCBFmhpx2FrmRUAku2eBUDNEZtsfcJEuCjmRp0OZjkHS4vMUD9dckAx/73YAHJ
	rpkYZDYDP6a1tkQsiA2u06/JBS0ynPfBInxGZoXyG1CopIMQ1KGLhpi9TXJuWpcq
	Hlkz5hB0Fttc1NKR72qbVx6yi7Dep0yDKB4R84KawSzV1ipPZyQpV9aIsESSPasj
	oRX9c7mlAJ/It2DadH8W43NCPCkgBkorwMndOJROz1JaIOzrzvE9CZYokzW70WSE
	q8WZkrht8EHu5Ic9nsap8TL0KnZi8Q6DCRGbNBFcT91Lng==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cgn8rbc76-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 24 Feb 2026 07:47:42 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-8cb4d191ef1so745474985a.0
        for <linux-phy@lists.infradead.org>; Mon, 23 Feb 2026 23:47:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1771919261; x=1772524061; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=/Nkk8MNVa9p4aBb4Bn0e8YFqa4T1gMfbm9SGZ2SOdBg=;
        b=Brd7aTV+66DfOCtbQLwo9lLXZa9TK9iiJFCBu9p18BhIuASMbDdI7a6uIvotv6S3MN
         HkW2XX5kZ1fCzBOYnuruLo1H3e56+Zis5Q6HGPA/QWAbYyf90J266O9Mb29CM1DxZGMG
         8YW2aNbKNow26GicRe9KrnKVwlYMPtNSHgYDJHoUA+4nOklPZgaHeehCv1F8ykMJDpFb
         1VqXIFI+0wFUdV7aIobup+Y8XIC1ezySbk+QeXQDOvSLgu61+0EBt8bEsIFVaXR8m/kb
         SJa5T8q0TtuxO5/Vo53SmX6nD8aFlwDu+wY20Cg2UEt6QgJU6njJzSNZjmAYWJwhyTNn
         yAfg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771919261; x=1772524061;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=/Nkk8MNVa9p4aBb4Bn0e8YFqa4T1gMfbm9SGZ2SOdBg=;
        b=rXUBOYR2EMYrZWI1SQUW1U/0E4Owx2IItdzCPEMC91SOvWm6PY1gQL/dn1Wf08v/zt
         rJOX+CBw9AazlNHv+FTrrcH8xID2xoeRvkFH0qfMdBJXeGoYIc1aswsvs1BXCZuPAOGJ
         FGhvVjXClEN4bVavzzg5M5nIFKs/4oewciS/HaoXxt2hgYT1ZURtzSQdaxRzIx+ySjx+
         e6XfOMnEYL+x68Iehrw8R+EHzjGQ+mcHivHDOt443AYdhcZOJoWZbzYScyWrB6Iej96+
         JnJa9/xZMHeBQz9zVFoF8cGBWj48ucqxqAsK1/he8fk+13AFFYM8rEK9vcudonhC7Tq+
         OiJQ==
X-Forwarded-Encrypted: i=1; AJvYcCWY38OEjzsjQ7D4Z6kVmurqbyufSGevxXCebpaclrCGBX3X4XdQVHzelNGWMF0dUCQX8FiSC+vr44s=@lists.infradead.org
X-Gm-Message-State: AOJu0YzdGduE1qsquQEAhzqNABgtLl1FHBhd3qEzYPVS2AHjDRQ2OMUk
	a232HrFVnvOvzDRAwgRbdA45PirPyFleLFeIRk1udGUUp3Agd+oP5r6JxRtn1SZpfoo39yuI1CB
	jDGA8Xox4C/rpqZM7SIyiWwUiXwEUDeGE3JYRWb76aZG4aBL9QJgqFiWAI8u2rEjegX4R
X-Gm-Gg: AZuq6aLrXE4hQCuOf9VH4y/jd6m4mVdBJ0S7a0P3j+Vv2uJuJYHg/tMgsmDdUvMsnkQ
	wyp3ZzM7mV1pFuhPT7DgwgCuikLO/hkqVoKkkSbCc56Luep4aSmQetk0HFjMbFigrGO18+SFi5O
	7jFS2IaGd8HfZn6/014vljm7KoVjclx4R6g7L9CCgDGLncpAv0SwZqA0XT3aVIANSdiWaaVYRHm
	kiMDYB1jS2x5pTaAqPuoCxBJ+yapUQwqWqL4L+IlhnxFY2Y9BXoA4ahWW0dyfgnGgWFKoCM3Qwu
	9pcDFwPNRMPbV8TqmOs/0S3HOPFJq5gCofjMfG4a9IYLUv2nF7R+AtoK/x/7LSeUq3Wc6+RWUaP
	0crhGGPWPoQqFNu0jcbiOOD2PIJvEgoVJ7MW34I4+GBi8zdpPeRJE9ZEo4k48arFPIVwOTCimdl
	A9FO2aypx54KmDbxGld5HFSoVAYcudGhmULqI=
X-Received: by 2002:a05:620a:29c6:b0:8ca:55:ac60 with SMTP id af79cd13be357-8cb8ca98dd9mr1369022785a.78.1771919261106;
        Mon, 23 Feb 2026 23:47:41 -0800 (PST)
X-Received: by 2002:a05:620a:29c6:b0:8ca:55:ac60 with SMTP id af79cd13be357-8cb8ca98dd9mr1369019885a.78.1771919260500;
        Mon, 23 Feb 2026 23:47:40 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5a0eeb44fb3sm2024777e87.61.2026.02.23.23.47.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 23 Feb 2026 23:47:39 -0800 (PST)
Date: Tue, 24 Feb 2026 09:47:37 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Cc: Sven Peter <sven@kernel.org>, Janne Grunau <j@jannau.net>,
        Neal Gompa <neal@gompa.dev>, Vinod Koul <vkoul@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Philipp Zabel <p.zabel@pengutronix.de>, asahi@lists.linux.dev,
        linux-arm-kernel@lists.infradead.org, linux-phy@lists.infradead.org,
        linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org
Subject: Re: [PATCH 3/3] phy: qcom: qmp-usbc: Simplify check for non-NULL
 pointer
Message-ID: <itioeaycenubrafp6qy7qknshokosgicgzfzndwrtpj6bfcsxf@penpm5zdqk2e>
References: <20260216110413.159994-4-krzysztof.kozlowski@oss.qualcomm.com>
 <20260216110413.159994-6-krzysztof.kozlowski@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260216110413.159994-6-krzysztof.kozlowski@oss.qualcomm.com>
X-Proofpoint-ORIG-GUID: 7ttH8_yIYQxO025347DD_iYtpcDw-IGK
X-Authority-Analysis: v=2.4 cv=V7twEOni c=1 sm=1 tr=0 ts=699d579e cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=DJpcGTmdVt4CTyJn9g5Z:22 a=EUspDBNiAAAA:8
 a=rQXAbXeZuVbgsyajZegA:9 a=CjuIK1q_8ugA:10 a=NFOGd7dJGGMPyQGDc5-O:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjI0MDA2NiBTYWx0ZWRfX/S5epif+MVM1
 XDMsQVR0MXrLy0jpk4IMxYmH9xZEuDzhxdL5zsWwcrRJ9A6c9RsMt8CoVn96TIQVhGjogt0EpDU
 fsNGQGAbPHG7nfzOx12IRxgG3ePKnrlo1Ep5F1CpNCILDFCtPS/kDlSyQklGoZlh/ZHodScn3w1
 Y+WU6NjvPXADaa/wFPTS+VM3LMiQkJ2FNdG5WkH9pyT3YvVtyqL4Wes6J1rfFaj4yYhtXCPyiQn
 KLjGqksc8FmMd2qPJTIFRctbA1t7ZKXUMzezmmZCdO/BCIMis3KzUFDJGc5PNmnF2K/DJkt2FoK
 8cq3W8NTV3uYhP2Ym/8xthOga1NtBOeHVmSNHWIc7OkW1fKaD7nvUX1en7XBPkGnMtaMH2v9aNc
 8xK55adEDAd84PSzVVEfjcch9AbI27AzuC1qqjWuikQFq07kaj0R0VL7rnsS7D/Ld+HmRgGXAsm
 j+K3N5+j4TG3RCwngzg==
X-Proofpoint-GUID: 7ttH8_yIYQxO025347DD_iYtpcDw-IGK
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-24_01,2026-02-23_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 spamscore=0 lowpriorityscore=0 suspectscore=0 phishscore=0
 impostorscore=0 bulkscore=0 priorityscore=1501 malwarescore=0 adultscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2602240066
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260223_234743_670470_2B7F424E 
X-CRM114-Status: GOOD (  13.11  )
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

On Mon, Feb 16, 2026 at 12:04:16PM +0100, Krzysztof Kozlowski wrote:
> Pointers should not use explicit '0' comparison, so just use standard
> evaluation as non-NULL:
> 
>   phy-qcom-qmp-usbc.c:1682:31: warning: Using plain integer as NULL pointer
> 
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
> ---
>  drivers/phy/qualcomm/phy-qcom-qmp-usbc.c | 6 +++---
>  1 file changed, 3 insertions(+), 3 deletions(-)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
