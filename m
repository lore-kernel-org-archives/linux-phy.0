Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DD012C61DBD
	for <linux-phy@archiver.kernel.org>; Fri, 28 Aug 2026 10:16:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SysrjDxerbYreQn7A9TDiWmZuShYkgZK6qtH+t1TeOg=; b=1qXnvRlXjcE7Og
	CuHOpfxBaEv0lYE4Ylvu/ww+kS1W2YlqXwaGD1dElweNK0lqDpWxleZXBOgnBBTKJktPhtMXNKtLO
	WRue65VHds90vzloAn0da//B2jGuM1BDQcm+F0lgc6HQI3xGrOsrQE483VmMYzVe1TjUus2A3Ur8a
	JCTMGegcU76bw2Cy8bZAQZIkMvPrSdImJv2+O5IZIk8Usw71VQpCBJ6lF/zTaFvH9BD1+A9sVWM0J
	zFuGJ5AJgoIyCuNmxgmy4tz0YPQn/yOttkQrnBQKIXvpibZk2Gcasp3nlnyPOLEZwdMwNns+tUoGW
	RMJxrZcZJqI3OtI8vOjA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wztdl-00000005Yas-0eBl;
	Fri, 28 Aug 2026 10:16:53 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wztdi-00000005YZx-1P08
	for linux-phy@lists.infradead.org;
	Fri, 28 Aug 2026 10:16:51 +0000
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 67SA7pVV2152630
	for <linux-phy@lists.infradead.org>; Fri, 28 Aug 2026 10:16:48 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=MJzRQ+TxZwJZtx4rj95o7W3G
	i/oMwqlmwnUjZaaQxXY=; b=L+3efcbDL5b09VaXC/AHU4Kvz9PguOI8/4zKP/YZ
	vRrhfUrJPRX6+oddid/PV+N6D8bgTucXGOn77Gsnt+XM5HCMD4RmLqao6EZQsH58
	WuSvvYIR/0Zw/jOWnTfZSxxhbvwIowbWQoi6LgWGUZYMUVz38xFho/D4ZHntISF/
	Eqvg0nFZFSOfSuy/aO2om1j4m3+jpZn8iAO4nWwU/ukwlhVZngH9FBrJThUp6yVz
	9Jys4UzW2vFdqlnzMMfemNcfnywHfQteYyBab4ZNDapwjO7+QNHCG4heIqtUL5lv
	PnvmXBs60yRZJuP/b864lBD3bJXF8Xy0snpZN9vJynXqGQ==
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4gb42r95tt-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Fri, 28 Aug 2026 10:16:48 +0000 (GMT)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-52fc16ac179so5344631cf.0
        for <linux-phy@lists.infradead.org>; Fri, 28 Aug 2026 03:16:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1787912208; x=1788517008; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=MJzRQ+TxZwJZtx4rj95o7W3Gi/oMwqlmwnUjZaaQxXY=;
        b=hP2QEo/Txj9cAkaC+56kQnM3/w99t1M8pwhlvISq7ZsK9qvt6gQisFNaDPXR4B6srF
         wk+DtJRLNpTAFBF4h6lKXJRvnNZ1ChSxv5KgQ23EihGMot5hZoyNnehuUbgMlFO+REN5
         e7lzVULZLDaI2MHfdmcbJ4C3TVSJXGY7PfJ0YFBWMLAkXqv2M/Yadr4rlQKMzTLYSaPy
         oz1PD22Xtlv+XlQf2WSARMLiM5YZvKq/NT7e2FH02NTYK42IOpMs3WmNvmchrPsTDq+w
         pHfdhwlNbmeGsXGJ80P4HV8IJo41IOb0Gk2XUAr06VtGLe8brbonmHnd22WRUUofrDvG
         GcTA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1787912208; x=1788517008;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=MJzRQ+TxZwJZtx4rj95o7W3Gi/oMwqlmwnUjZaaQxXY=;
        b=eJueodcuM5EnOmf8XV1FMV+6NdtHx1kdRdeWFyI83MlG7LUS0hzxpHZXNSqmSPfGBg
         5FYG6c3ttHhAlBeYJ2lTRKEKtfxneyW/KiVt2+P7BPv8re4zpxYCI7Y8iudZBnCTQ0Dd
         WT9f+GrxFZglkz21IAl7yh1KV8J64aU1TrvGfKa7fL6FPEj0ZPA0GJo/lfxkoQUn64pa
         ah/r/xvQ26w/hYExpTGUpXzd9kjgWkaBjv9AGe2t2cfD9TggLXzL0S4XNH0aOuomGl8O
         s+4UHy0+DFBhZLYrB1TngKx4+qe0TDEkISCI9hdwjZ1YGcZ4Oev7zKuY9yf/2BSjzQ0B
         0rXQ==
X-Forwarded-Encrypted: i=1; AHgh+RqtxZFlI+FSbEZcHSfMO6ZCeruhXkwoGznH95mWJum4A21DhxQ7C8CFqBjDn4YERHQdL6OrD4jCUGU=@lists.infradead.org
X-Gm-Message-State: AFuF++lHc3IkYzPFjcuRtnwXCkmB7VsFx1Lk5R76KRIUPM+W/8CxbDF0
	3n6ui9ZdYR4P4S2fj20ysIpKCxBpvcpvGT6tr2XMdplhPbCXR/BwE4aAdYJFkgRfy+iIwLmZIou
	RT0zwvcyGgW11EK4dc+IaNbpgznPl2RyaGbBWIpcw4FHV8e0tzt5aYbHiGSQfucJMgLw0
X-Gm-Gg: AR+sD10suFUCz2244v6aaAo4Je6leu01bhbH8L/qERiZEgzWV1A0sahWrUI56kh0Yz1
	vUNlZuxU8h+vMoxoeTYZEm7F4/Vf+k5Hdm9jXOgEdeoozIRBU4GpgVu7retAIAuZQqBEPkNjYxH
	1aU4GI0bC+YjuB1gTlBCWENN4TH0M2h+YcwUYfSyEQbVjSw0/8Ls2Pg69BClle/f0r7jISVYh5x
	b2tSt0muN5hFYTnd6+NV39mmaucSsWoET+r+p1NaXA+RGqM4qf7m6lNHLtCy9ZJsWakrr2fom9/
	VxMTOBRN/AFpA1GfFYfUvSE+JMWMRpYUUYePkCX8dYXnUniB4qb1ZG7B5A+7r03GZ0AfOcGf2NH
	UWekK2r51rWJQBA==
X-Received: by 2002:ac8:7e86:0:b0:52e:49c5:42a3 with SMTP id d75a77b69052e-52fa1bbba1dmr136345501cf.13.1787912207706;
        Fri, 28 Aug 2026 03:16:47 -0700 (PDT)
X-Received: by 2002:ac8:7e86:0:b0:52e:49c5:42a3 with SMTP id d75a77b69052e-52fa1bbba1dmr136344711cf.13.1787912207137;
        Fri, 28 Aug 2026 03:16:47 -0700 (PDT)
Received: from oss.qualcomm.com ([86.121.170.13])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-49b91c5790csm45373525e9.0.2026.08.28.03.16.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 28 Aug 2026 03:16:46 -0700 (PDT)
Date: Fri, 28 Aug 2026 13:16:44 +0300
From: Abel Vesa <abel.vesa@oss.qualcomm.com>
To: Nabige Aala <nabige.aala@oss.qualcomm.com>
Cc: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        Manivannan Sadhasivam <mani@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org,
        Ritesh Kumar <ritesh.kumar@oss.qualcomm.com>,
        Mahadevan P <mahadevan.p@oss.qualcomm.com>
Subject: Re: [PATCH v3 1/4] phy: qualcomm: qmp-combo: Add DP COM v8 header
 and fix register layout
Message-ID: <x4mvoava7l3wftqspqdsc7f624hvkr3r2bmoettaqneaq57c4n@garrl4ikun4j>
References: <20260828-glymur-phy-v3-v3-0-8e73ce7c4636@oss.qualcomm.com>
 <20260828-glymur-phy-v3-v3-1-8e73ce7c4636@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260828-glymur-phy-v3-v3-1-8e73ce7c4636@oss.qualcomm.com>
X-Proofpoint-GUID: YtL_LNYthj_r1LFuhkPiJuh82CnHmaqM
X-Proofpoint-ORIG-GUID: YtL_LNYthj_r1LFuhkPiJuh82CnHmaqM
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwODI4MDA4OCBTYWx0ZWRfXy79OHQqOyKYz
 2Xx3KMJyXq/W7wrGSZhs3hZPSiuL2/o3Q3LdNyYkVjVf0YU68AiKXn7TCYaYKT0PO883qZeGaTU
 grO7YIY5wAEw5Ibr8qCSFATFH7qFdJjVnqNUaQ6pPQjDk+6Gu8AO5Ws8Tq2mILMLkVaxY16qbuE
 0iEnuHs5HOqPME6d8Snjkyt2GNHJ4Sacov00vhtie2I5Bb8GtQ+ZH3WZCpLZ7ml7K7OBVwyvHw1
 KFAlbzPiEFaWknho+g5FWN+CzObej+Sn2VyeK+zXOt4q0d1BOipz8quVFFWU/2td9A0Vs240GQ1
 HfITA4wmfGUSEtY93W2bECGhjjfV6sUcVfJ0z1JrafvwxoURw0Uwyn1SVPfMmd7JJa3V7X8ezH3
 uoUEaBw9HhvL8I2BfijqQERw+obHfDI9wNe+upCJWwfPzk7+B4v8ivTmNq3Q9h+hZZRoGydYNLx
 yzLm+KL1MPHBTnpclyw==
X-Proofpoint-Spam-Info: AW1haW4tMjYwODI4MDA4OCBTYWx0ZWRfXyK47S7xolEj5
 OV+wA+6ltS4YtjTjN4PVFY7Qjka96GNi7JmPZZu7OWelqEy91+Msw8DszrNURJL2xwRp97ETBaU
 4GhqnZimhh1+4UFCXc6hyhjri4Boq0U=
X-Authority-Analysis: v=2.4 cv=Fpo1OWrq c=1 sm=1 tr=0 ts=6a916010 cx=c_pps
 a=mPf7EqFMSY9/WdsSgAYMbA==:117 a=clBUptZa5v5FR042Ey+sjA==:17
 a=kj9zAlcOel0A:10 a=Sv0fKeRqtYgA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=yx91gb_oNiZeI1HMLzn7:22
 a=EUspDBNiAAAA:8 a=JKUcNUVehQOhZJPRnW0A:9 a=CjuIK1q_8ugA:10
 a=dawVfQjAaf238kedN5IG:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-08-28_03,2026-08-27_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 spamscore=0 malwarescore=0 lowpriorityscore=0 phishscore=0
 bulkscore=0 adultscore=0 suspectscore=0 priorityscore=1501 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2606150000 definitions=main-2608280088
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260828_031650_487744_F27F55B3 
X-CRM114-Status: GOOD (  10.36  )
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

On 26-08-28 15:13:13, Nabige Aala wrote:
> From: Ritesh Kumar <ritesh.kumar@oss.qualcomm.com>
> 
> Add the new DP-specific QSERDES COM v8 header file and update the
> register layout to use DP-specific status register offsets for
> C_READY_STATUS and CMN_STATUS registers.
> 
> Signed-off-by: Ritesh Kumar <ritesh.kumar@oss.qualcomm.com>
> Signed-off-by: Mahadevan P <mahadevan.p@oss.qualcomm.com>
> Signed-off-by: Nabige Aala <nabige.aala@oss.qualcomm.com>

Reviewed-by: Abel Vesa <abel.vesa@oss.qualcomm.com>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
