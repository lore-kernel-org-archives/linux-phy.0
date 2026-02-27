Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E0BA8FD9E1C
	for <linux-phy@archiver.kernel.org>; Fri, 27 Feb 2026 05:11:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VlHONd7piTvMcG43XIXJ4pVrxWzZajSWhvAMxRbz25U=; b=HUMi+4JfnxSm+q
	yKm+Yl8AD34B+1lhEF5RYXr3xNpMxbdY8kkWQp9kE/YctUmYEPpaSumqujuo074fl8giTYELd+Nrs
	iug+ykP5QtOOR2mMaTBg3svbR+xfLqAheEMcsuS3NbkDm8e+vRks+YeGOP+8eNqF5TcYWdu7OJXmt
	1hQZ17+YnFq1OxRZ5t7KONR42nvV0tWQ/C/f3/NCqhv37NDr4uwzi+x0GGRRzamNhZXiRU7yqlPhe
	7oPCU/fh3tKSSGe1HxI1hVwcgzo5lnnv3jjJIASI3ebgzG/y05Rc/gJdQVafch4sdzf57FIZEACcO
	YRvxQS4JFqQ+wa9xsD7g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vvq8G-00000007gZJ-1j4l;
	Fri, 27 Feb 2026 05:11:20 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vvq8B-00000007gYo-3Mee
	for linux-phy@lists.infradead.org;
	Fri, 27 Feb 2026 05:11:17 +0000
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61R2K2821874156
	for <linux-phy@lists.infradead.org>; Fri, 27 Feb 2026 05:11:14 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	NjJTpWloqr/bJjbh8x8C9pw0cFKgkVI0nle3ydeuQNQ=; b=Ddw3AbA0MFg7QDtd
	UlT+ED2OxGmgfzI1qdepdtkxliMt9j8zZCrKQJMq7wRZH2nw1YAR5+rohGxSSYUy
	a/aba6MszooTw9ZTn5C3yiZkGumADYw4Nxe/q/dF3y6SuMDs1dHUMzPMFu0LQXx4
	IDYk5w3yEIm8brIqy2KhPZMgh+AZJXudT7wvgva6l2xQhLhQJGOn/cEjralXG+Z6
	yD2S7y/JZUQbff3ejNR1fmOgzThREyJ/ROdZTnLuww+NoVTE+UWhpia1W6bfk4Bb
	AyawRnHefyFrW14DTIjzUBMrzooB0JZZKlD/dgU2gGL5/kuqW9YI2DIIGJEyONX0
	VozvmQ==
Received: from mail-pg1-f199.google.com (mail-pg1-f199.google.com [209.85.215.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cjuytsn6d-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Fri, 27 Feb 2026 05:11:14 +0000 (GMT)
Received: by mail-pg1-f199.google.com with SMTP id 41be03b00d2f7-c6e170fa2f5so662589a12.0
        for <linux-phy@lists.infradead.org>; Thu, 26 Feb 2026 21:11:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1772169073; x=1772773873; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=NjJTpWloqr/bJjbh8x8C9pw0cFKgkVI0nle3ydeuQNQ=;
        b=Jrua9kI6synkVx+y3Btf+NbD5UWraSKKCYD9y95eYTcco78yTDfpFeD5+RU8ZEmQ+7
         RddED6yJVq2gkVpSw5IbP7mqaC5rKajPsY07+dZTI21VabexSAEzb9jot9xsd4q5ZuNi
         XK0IOU79TpCUmRonyMJ48MkUAjSdMm3f4tjJG+gAmVvuAFZqzPHW47gV/cJIt44qH45a
         jkW5m+WRTt5U8ksi1x54Ok7RYZsANAIQDZ83zE9cSwi7hkppa4RAuZkXQyRkX7bk0Ozx
         spTwbHyDD7c6y2LFBUi5z7IkB8zawjedfo5RXlINP53qezOnjilU2EyWsLp/l7cemNFt
         BzWg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772169073; x=1772773873;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to:subject
         :user-agent:mime-version:date:message-id:x-gm-gg:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=NjJTpWloqr/bJjbh8x8C9pw0cFKgkVI0nle3ydeuQNQ=;
        b=h2sYFl7lsUYUM2ccbNcCEWmsDU8+dFaL1JfU6S4GHq4/kdRb4v26NwBT1aLkIkN/k8
         ziGjm0+Wt6zCitexptTIMsmSlNQfgBCY2fGj11OpYKW8JrG/BdxEXZ76GaC3WPqEnr0z
         HHaQ6PT2e3XDWag7gt7e6ix6V2IaAwsSaBylcpsat5sstt800yxX5Inmsrl6Iz7SqKHa
         UePqoPZUBGOtkBw8T7AofVMF7NdeRm9fIyXQH3L2I36bsp8DU2TNS8uL/skc/JYPFs/a
         e1AZVGheFIV2wPvhohLgtq0M7hZdY/a72Xj2IEtImarmwkMytjoIoiqgBnLSZydW53z2
         H0Dg==
X-Forwarded-Encrypted: i=1; AJvYcCV8yR/rKpJy7rato1nfNtgQiJxZyb79PTP/GYhGfWyo+9sc3ynlokiBvj4a9G3VIhHXMxquLXNKZy4=@lists.infradead.org
X-Gm-Message-State: AOJu0Yyt1H7OilC5I2Qd7em1d/88dMDSGCMdKaZV6h6r+S4FLTaYqpIC
	LygOIJTGXd19tPBn+Kx5YW9S7zjXQuKuhy5j306Y5tAZ7uCkH4QueC1MHUtvbG7dcOYXhaxOBAt
	EFPJ5r8akwx625V9oiDc2EQxhbsskyrG39pifDAug4DF+9dvPcFutreRdZWJHCWxLqknz
X-Gm-Gg: ATEYQzz8h/idvNePS7Yj80MOlxOyrv0X0awg7/qRIWjOY1D3gjgmNmnb7E5mW2iYooW
	VFv1XmX7q3fuhrThy3r+tt7sUOxGyZ5k5Qk8h3/xWXGYoY5WWpZUicmF4MsXx+BsnSxqmXV6JTF
	sbmBsUM+mg1ZrfM0t89k0j6AZLvRJXJvVozw4Oi2xyEoUdRFygaqTuunyjesJS1OQXts8mSBP7d
	afjfyT+9N/CS7EUfNfAoULn4mm997pgK1+J8h1S2kfPDLzR4FUE+E59DOnotqZWVKZnnmjRQ8PD
	cStFrVDpEoquSWA6tO0195mkx/2uyF/vIsCH/w8Adwphw6TpR6xqnO6Wr2iCs0guAh59kA+hkZh
	QP/xL2HXunYJi1NORTslTE545TwJmLYtMhjTu9TC90dOll+dLvUOy0iaJk2ZegKczqeLz15HzEK
	9naqO5rohBJjSpWdc=
X-Received: by 2002:a05:6a20:729c:b0:366:21f0:cbd0 with SMTP id adf61e73a8af0-395c3af1ae9mr1209503637.3.1772169073298;
        Thu, 26 Feb 2026 21:11:13 -0800 (PST)
X-Received: by 2002:a05:6a20:729c:b0:366:21f0:cbd0 with SMTP id adf61e73a8af0-395c3af1ae9mr1209491637.3.1772169072873;
        Thu, 26 Feb 2026 21:11:12 -0800 (PST)
Received: from [10.133.33.97] (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-c70fa82dd09sm3542913a12.28.2026.02.26.21.11.10
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 26 Feb 2026 21:11:12 -0800 (PST)
Message-ID: <45f8be25-2ca1-4ad3-a549-23b1ce057413@oss.qualcomm.com>
Date: Fri, 27 Feb 2026 13:11:08 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [bug report] phy: qcom: qmp-usbc: Add QCS615 USB/DP PHY config
 and DP mode support
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Dan Carpenter <dan.carpenter@linaro.org>
Cc: Neil Armstrong <neil.armstrong@linaro.org>, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org,
        linux-kernel <linux-kernel@vger.kernel.org>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        li.liu@oss.qualcomm.com
References: <aYXvBGVdwXTrJNio@stanley.mountain>
 <e110546e-dd18-4ebe-9281-adfbdde98d7a@oss.qualcomm.com>
From: Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>
In-Reply-To: <e110546e-dd18-4ebe-9281-adfbdde98d7a@oss.qualcomm.com>
X-Authority-Analysis: v=2.4 cv=bJIb4f+Z c=1 sm=1 tr=0 ts=69a12772 cx=c_pps
 a=Oh5Dbbf/trHjhBongsHeRQ==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=IkcTkHD0fZMA:10 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=3WHJM1ZQz_JShphwDgj5:22
 a=VwQbUJbxAAAA:8 a=JassTcn4au4-2yrw79MA:9 a=QEXdDO2ut3YA:10
 a=_Vgx9l1VpLgwpw_dHYaR:22
X-Proofpoint-ORIG-GUID: 9e3DmNQNsYgZmMfeJ9mrLn9oRtWnPAoW
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjI3MDAzOCBTYWx0ZWRfXxjuNjXpxVkun
 iknhbGCAPNNTreKuqhHJQreE5Kfk4ILOzC7jg3SBe5neq8uJxRuX27Qbz4r4JS03rW5e+ktY0Bz
 lOKFi8cwm/HpRFI+UhxiQ/dS6RzN0Zo+6LcS3IP/IN+g0SManSVTmaXrr/458wZ3cdMJGZIgAi2
 STxBawREok+0SMmHK5ILdTJt4LoEFQUbvHqc8OzDGZrn6UmSsktqh6xQO2K4jtL9yUziOFNA0Ap
 t1zmZIhd46N7pHwXual9EWHqx/6ieH0n1opCJnq+hqN3Qm6mdAh4/asVT4CTrcFvTkjoMTZFuT0
 QO3QuKKCdDp4+Hl++0L36JxGn6a6YrMTJ9pTM/jfWzG6fR3i+ypJbIN5tUU3arwEJDUt629cnl2
 G8N4ZXFTzyPGSDO0bftJdQPNdEINFrpIiNGjend2kQi3u/zXUwvomK17PUXadUNVkBf2GIJyrgS
 cJSbnmbdxaZrCkcdftw==
X-Proofpoint-GUID: 9e3DmNQNsYgZmMfeJ9mrLn9oRtWnPAoW
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-27_01,2026-02-26_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 lowpriorityscore=0 clxscore=1011 priorityscore=1501 bulkscore=0
 adultscore=0 phishscore=0 suspectscore=0 impostorscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2602270038
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260226_211115_988281_C8CB524A 
X-CRM114-Status: GOOD (  13.65  )
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


On 2/17/2026 11:27 PM, Konrad Dybcio wrote:
> On 2/6/26 2:39 PM, Dan Carpenter wrote:
>> [ Smatch checking is paused while we raise funding.  #SadFace
>>   https://lore.kernel.org/all/aTaiGSbWZ9DJaGo7@stanley.mountain/ -dan ]
>>
>> Hello Xiangxu Yin,
>>
>> Commit 81791c45c8e0 ("phy: qcom: qmp-usbc: Add QCS615 USB/DP PHY
>> config and DP mode support") from Dec 15, 2025 (linux-next), leads to
>> the following Smatch static checker warning:
>>
>> 	drivers/phy/qualcomm/phy-qcom-qmp-usbc.c:803 qmp_v2_configure_dp_swing()
>> 	index hardmax out of bounds '(*cfg->swing_tbl)[v_level]' size=4 max='4' rl='0-4'
>>
>> drivers/phy/qualcomm/phy-qcom-qmp-usbc.c
>>     777 static int qmp_v2_configure_dp_swing(struct qmp_usbc *qmp)
>>     778 {
>>     779         const struct qmp_phy_cfg *cfg = qmp->cfg;
>>     780         const struct phy_configure_opts_dp *dp_opts = &qmp->dp_opts;
>>     781         void __iomem *tx = qmp->dp_tx;
>>     782         void __iomem *tx2 = qmp->dp_tx2;
>>     783         unsigned int v_level = 0, p_level = 0;
>>     784         u8 voltage_swing_cfg, pre_emphasis_cfg;
>>     785         int i;
>>     786 
>>     787         if (dp_opts->lanes > 4) {
>>     788                 dev_err(qmp->dev, "Invalid lane_num(%d)\n", dp_opts->lanes);
>>     789                 return -EINVAL;
>>     790         }
>>     791 
>>     792         for (i = 0; i < dp_opts->lanes; i++) {
>>     793                 v_level = max(v_level, dp_opts->voltage[i]);
>>     794                 p_level = max(p_level, dp_opts->pre[i]);
>>     795         }
>>     796 
>>     797         if (v_level > 4 || p_level > 4) {
>>
>> These should be >= 4 instead of >.
>>
>>     798                 dev_err(qmp->dev, "Invalid v(%d) | p(%d) level)\n",
>>     799                         v_level, p_level);
>>     800                 return -EINVAL;
>>     801         }
>>     802 
>> --> 803         voltage_swing_cfg = (*cfg->swing_tbl)[v_level][p_level];
>>                                     ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
>> This is a 4x4 array.
> Thanks Dan for the report
>
> Xiangxu, are you planning to send a patch to address that?
>
> Konrad


Thanks for the notice, Dan & Konrad.

I just got back from a long leave and will submit the relevant patches as soon as possible.




-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
